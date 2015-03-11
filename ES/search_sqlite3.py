__author__ = 'shivendra'
from elasticsearch import Elasticsearch
from pprint import pprint

ES_HOST = {"host" : "localhost", "port" : 9200}
INDEX_NAME = 'projected'

# create ES client, create index
es = Elasticsearch(hosts = [ES_HOST])

# # Taking user input
# search_for=raw_input("Enter what you want to search : ")

# #Search
# res = es.search(index = INDEX_NAME, doc_type=TYPE_NAME, size=10, body={
#   "query": {
#     "multi_match": {
#       "fields":  [ "college_name", "course","college_state","college_city","stream","college_synonyms" ],
#       "query":     search_for,
#       "fuzziness": 2
#     }
#   }
# })

if __name__ == '__main__':
    table_name_in_ES = ['college','course']
    search_for=raw_input("Enter what you want to search : ")
    res = es.search(index = INDEX_NAME, doc_type=table_name_in_ES, size=10, body={
      "query": {
        "multi_match": {
          "fields":  [ "name", "course","state","city","stream","slug" ],
          "query":     search_for,
          "fuzziness": 2
        }
      }
    })


    print("\n\nresults:\n")
    # for hit in res['hits']['hits']:
    #     pprint(hit["_source"])
    #     print "\n\n"

    for hit in res['hits']['hits']:
        pprint(hit["_source"])
        if hit["_type"]=="course":
            print "\n#########  College for the above course  ##########\n"
            #pprint(hit["_source"])
            res_more=es.search(index=INDEX_NAME, doc_type="college",body={
                "query": {
                    "match": {
                        "_id": str(hit["_source"]["institutehandler_id"])
                            }
                        }
                    })
            for hit in res_more['hits']['hits']:
                pprint(hit["_source"])

        print "\n\n"

#college: city, state, slug, name    course: course, stream  trunnxxqpl