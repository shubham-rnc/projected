class Removeinstitution < ActiveRecord::Migration
  def change
	remove_column(:handlers, :institution) 
  end
end
