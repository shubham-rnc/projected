class Addingfields1 < ActiveRecord::Migration
  def change
  	add_column(:handlers, :institutehandler_id, :integer)
  end
end
