class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :test1
      t.integer :test2

      t.timestamps null: false
    end
  end
end
