class CreateTagattributions < ActiveRecord::Migration
  def change
    create_table :tagattributions do |t|
      t.integer :user_id, add_index: true
      t.integer :tagging_id, add_index: true

      t.timestamps null: false
    end
  end
end
