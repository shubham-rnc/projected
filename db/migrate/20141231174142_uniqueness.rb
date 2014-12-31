class Uniqueness < ActiveRecord::Migration
  def change
  add_column :handlers, :uniquenesscheck, :string
  end
end
