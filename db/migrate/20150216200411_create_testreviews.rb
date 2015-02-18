class CreateTestreviews < ActiveRecord::Migration
  def change
    create_table :testreviews do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
