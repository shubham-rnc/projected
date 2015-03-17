class Tagging < ActiveRecord::Base
belongs_to :tag 
belongs_to :handler

has_many :tagattributions, dependent: :destroy
has_many :users, through: :tagattributions
end
