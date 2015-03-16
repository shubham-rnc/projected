class Tagattribution < ActiveRecord::Base
	belongs_to :tagging
	belongs_to :user
end
