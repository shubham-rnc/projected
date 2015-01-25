class Allowedvalueslevel < ActiveRecord::Base
#validations start
	#validation starts for presence
	validates :values, presence: true

	#validation for no specialcharacters 
	#validates :values, format: { with: /\A[a-zA-Z]+\z/, message: "No special characters" }
end
