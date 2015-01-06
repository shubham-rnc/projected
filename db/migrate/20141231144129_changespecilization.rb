class Changespecilization < ActiveRecord::Migration
  def change
  	remove_column :handlers, :specialization
  	add_column(:handlers, :stream, :string)
  end
end
