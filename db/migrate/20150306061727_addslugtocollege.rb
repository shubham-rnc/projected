class Addslugtocollege < ActiveRecord::Migration
  def change
  	add_column :institutehandlers, :slug, :string
  end
end
