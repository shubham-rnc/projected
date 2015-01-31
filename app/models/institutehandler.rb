class Institutehandler < ActiveRecord::Base
#database relations
	has_many :handlers

#validations
	validates :name, presence: true, uniqueness: true
	validates :affiliation, presence: true
	validates :Established, presence: true, numericality: {only_integer: true}
	validates :city, presence: true
	validates :state, presence: true
	validates :country, presence: true
	validates :descintroduction, presence: true
	validates :descacademics, presence: true
	validates :website, presence: true
	validates :institutetype, presence: true



end
