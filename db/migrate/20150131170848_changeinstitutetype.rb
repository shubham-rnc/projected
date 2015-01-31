class Changeinstitutetype < ActiveRecord::Migration
  def change
  	remove_column(:institutehandlers, :type)
  	add_column(:institutehandlers, :institutetype, :string)
  end
end
