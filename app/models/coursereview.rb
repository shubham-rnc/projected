class Coursereview < ActiveRecord::Base
	belongs_to :institutehandler
	belongs_to :user
end
