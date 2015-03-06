class Textreview < ActiveRecord::Base
	belongs_to :user
	belongs_to :institutehandler

	validates :body, presence: true, length: {minimum: 140}
	validates :futurescope, presence: true, length: {minimum: 140}, allow_blank: true
end
