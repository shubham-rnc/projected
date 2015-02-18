class Textreviewformat < ActiveRecord::Migration
  def change
  	add_column :textreviews, :futurescope, :text
  	add_column :textreviews, :bottomline, :string
  	add_column :textreviews, :notablealumnies, :text
  end
end
