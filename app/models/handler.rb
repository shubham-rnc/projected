class Handler < ActiveRecord::Base
 #validates starts
 	#validation starts for presence
	validates :institution, presence: true
	validates :level, presence: true
	validates :course, presence: true
	validates :activation, inclusion: {in: [true,false]}
	validates :stream, presence: true
	
	#validation of uniqueness
	validates :uniquenesscheck, uniqueness: true

	#validation starts for only letter to be entered
    #validates :institution, :course, :stream, format: { with: /\A[a-zA-Z]+\z/, message: "No special characters" }
   
	#validation starts for allowed values
	
	#allow = ["UG", "PG", "Online Certification", "Highschool", "Diploma"]
	#validates :level, inclusion: {in: allow}
      

#validations ends here

#field value auto pupulation

	def save
		item = institution+level+course+stream
    	self.uniquenesscheck = item.delete(' ')
    	super   # calls the rails save function to store our object to the database
  	end


end



