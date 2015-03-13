__author__ = 'shivendra'
import csv,json,ast,sqlite3
from pprint import pprint
from elasticsearch import Elasticsearch

def csvReader(filename):
    bccfile = open(filename,'rb')
    mail_sheet = csv.reader(bccfile,delimiter =',')
    raw_data = list(mail_sheet)
    return raw_data

# ES Settings
ES_HOST = {"host" : "localhost", "port" : 9200}
INDEX_NAME = 'projected'


def find_header(sqlite3_file,table_name): #In list of all column names form
    conn = sqlite3.connect(sqlite3_file)
    c= conn.cursor()
    table=c.execute("SELECT * FROM %s" % table_name)
    fieldnames=[f[0] for f in table.description]
    return fieldnames

def get_data(sqlite3_file,table_name):  #In list of tuples form, each tuple for one row
    conn = sqlite3.connect(sqlite3_file)
    c= conn.cursor()
    table=c.execute("SELECT * FROM %s" % table_name)
    return table.fetchall()

def bulkData(table_name, sqlite3_file, doc_type, f):

    header= find_header(sqlite3_file,table_name)
    data=get_data(sqlite3_file,table_name)
    bulk_data = []

    for row in data:
        data_dict={}
        for i,ele in enumerate(row):
            if i==0 and ele=='':
                break
            elif header[i] in f:
                try:
                    data_dict[header[i]]=ast.literal_eval(ele)
                except:
                    data_dict[header[i]]=ele
            else:
                data_dict[header[i]]=ele


        op_dict = {
            "index": {
                "_index": INDEX_NAME,
                "_type": doc_type,
                "_id": int(data_dict[header[0]])
            }
        }
        bulk_data.append(op_dict)
        bulk_data.append(data_dict)

    return bulk_data

def delete_and_form_index():
    es = Elasticsearch(hosts = [ES_HOST])
    if es.indices.exists(INDEX_NAME):
        print("deleting '%s' index..." % (INDEX_NAME))
        res = es.indices.delete(index = INDEX_NAME)
        print(" response: '%s'" % (res))
        print

    # since we are running locally, use one shard and no replicas
    request_body = {
        "settings" : {
            "number_of_shards": 1,
            "number_of_replicas": 0
        }
    }

    print("creating '%s' index..." % (INDEX_NAME))
    res = es.indices.create(index = INDEX_NAME, body = request_body)
    print("    response: '%s'" % (res))

def indexer(bulk_data,doc_type1):
    # create ES client, create index
    es = Elasticsearch(hosts = [ES_HOST])

    # if es.indices.exists_type([INDEX_NAME], [doc_type1]):
    #     res="None"
    #     print("deleting '%s' index and doc_type..." % (INDEX_NAME+", "+doc_type1))
    #     try:
    #         res = es.indices.delete(index=[INDEX_NAME],doc_type= [doc_type1])
    #     except Exception as e:
    #         print e
    #     print(" response: '%s'" % (res))
    # # since we are running locally, use one shard and no replicas
    # request_body = {
    #     "settings" : {
    #         "number_of_shards": 1,
    #         "number_of_replicas": 0
    #     }
    # }
    #
    # if es.indices.exists(INDEX_NAME)==False:
    #     print("creating '%s' index..." % (INDEX_NAME))
    #     res = es.indices.create(index = INDEX_NAME, body = request_body)
    #     print(" response: '%s'" % (res))

    # bulk index the data
    print("\nbulk indexing %s..." % doc_type1)
    res = es.bulk(index = INDEX_NAME, doc_type=doc_type1, body = bulk_data, refresh = True)

if __name__ == '__main__':
    sqlite3_file="/home/shivendra/Desktop/projected/db/development.sqlite3"
    college_table_name="institutehandlers"
    course_table_name="handlers"
    college_ID_name_in_course_table="institutehandler_id"
    fields_with_multiple_values=[]
    table_name_in_ES = ['college','course']


    f=fields_with_multiple_values
    c=college_ID_name_in_course_table
    bulk_data_college=bulkData( college_table_name, sqlite3_file, table_name_in_ES[0], f )
    bulk_data_course=bulkData( course_table_name, sqlite3_file, table_name_in_ES[1], f )

    delete_and_form_index()
    indexer(bulk_data_college, table_name_in_ES[0])
    indexer(bulk_data_course, table_name_in_ES[1])


