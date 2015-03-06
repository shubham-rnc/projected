class Addidstotextreview < ActiveRecord::Migration
  def change
  	add_column :textreviews, :handler_id, :integer
  	add_column :textreviews, :user_id, :integer
  end
end
