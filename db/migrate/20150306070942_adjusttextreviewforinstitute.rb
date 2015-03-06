class Adjusttextreviewforinstitute < ActiveRecord::Migration
  def change
  	add_column :textreviews, :institutehandler_id, :integer
  	remove_column :textreviews, :handler_id
  	add_column :textreviews, :coursename, :string
  	remove_column :textreviews, :futurescope
  	remove_column :textreviews, :bottomline
  end
end
