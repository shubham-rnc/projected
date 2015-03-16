class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :handler_id, add_index: true
      t.integer :tag_id, add_index: true

      t.timestamps null: false
    end
  end
end
