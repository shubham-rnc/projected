class Handler < ActiveRecord::Base
 #database relations
  belongs_to :institutehandler
  


 #validates starts
 	#validation starts for presence
	validates :institutehandler_id, presence: true
	validates :level, presence: true
	validates :course, presence: true
	validates :activation, inclusion: {in: [true,false]}
	validates :stream, presence: true
	validates :eligibility, presence: true
	validates :duration, presence: true
	validates :commencement, presence: true
	validates :descintroduction, presence: true
	validates :admission, presence: true

	#validation of uniqueness
	validates :uniquenesscheck, uniqueness: true

	#validation starts for only letter to be entered
    #validates :institution, :course, :stream, format: { with: /\A[a-zA-Z]+\z/, message: "No special characters" }
   
	#validation starts for allowed values
	
	allow = ["Under Graduation", "Post Graduation", "Doctorate"]
	validates :level, inclusion: {in: allow}
      

#validations ends here

#field value auto pupulation

	def save
		itemtemp1 = Institutehandler.find(institutehandler_id)
		itemtemp = itemtemp1.name+level+course+stream
		item = itemtemp.gsub(/[^0-9A-Za-z]/, '')
    	self.uniquenesscheck = item.delete(' ')
    	super   # calls the rails save function to store our object to the database
  	end

#search for internal purposes
  	def self.search(search)
  		search_condition = "%" + search + "%"
  		resultsid = where("id like ?", "#{search}")
  		if resultsid.empty?
  			resultsinstream = where("stream like ?", "%#{search}%")
  			resultsincourse = where("course like ?", "%#{search}%")
  			resultsinlevel = where("level like ?", "%#{search}%")
  			result = resultsid+resultsinstream+resultsincourse+resultsinlevel
			searchresult = result.uniq
		else
			result = resultsid
			searchresult = result.uniq
		end	
	end
end



