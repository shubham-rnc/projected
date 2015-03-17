class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :coursereviews

  has_many :tagattributions
  has_many :taggings, through: :tagattributions

  has_many :institutetagattributions
  has_many :institutetaggings, through: :institutetagattributions
end
