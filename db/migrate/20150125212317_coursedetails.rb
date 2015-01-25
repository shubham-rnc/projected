class Coursedetails < ActiveRecord::Migration
  def change
  add_column(:handlers,:eligibility, :text)
  add_column(:handlers,:duration, :string)
  add_column(:handlers,:commencement, :text)
  add_column(:handlers,:averagefees, :string)
  add_column(:handlers,:averagebatchstrength, :string)
  add_column(:handlers,:descintroduction, :text)
  add_column(:handlers,:desccurriculum, :text)
  add_column(:handlers,:descfuturescope, :text)
  add_column(:handlers,:descinfra, :text)
  add_column(:handlers,:descnotableprofessors, :text)
  add_column(:handlers,:descinternships, :text)
  add_column(:handlers,:descplacements, :text)
  add_column(:handlers,:admission, :text)
  end
end
