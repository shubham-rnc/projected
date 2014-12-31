class Handler < ActiveRecord::Base
 #validates starts
 	#validation starts for presence
	validates :institution, presence: true
	validates :level, presence: true
	validates :course, presence: true
	validates :activation, presence: true
	validates :stream, presence: true
	
	#validation of uniqueness
	validates :uniquenesscheck, uniqueness: true

	#validation starts for only letter to be entered
    #validates :institution, :course, :stream, format: { with: /\A[a-zA-Z]+\z/, message: "No special characters" }
   
	#validation starts for allowed values
	#a = all
	#validates :level, inclusion: {in: a}

	#all alowes allowed values for level field from Allowed values db
	#def all
 	#	recordcount = Allowedvalueslevel.count
  	#	storage = [0..recordcount-1]
  	#	i = 0
 	#	allentries = Allowedvalueslevel.all
 	#	allentries.each do |item|
    #		storage[i] = item.values
 	#		i = i+1
 	#	end
 	#	return storage
 	#end
      

#validations ends here

#field value auto pupulation

	def save
		item = institution+level+course+stream
    	self.uniquenesscheck = item.delete(' ')
    	super   # calls the rails save function to store our object to the database
  	end


end



