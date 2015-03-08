class CreateCoursereviews < ActiveRecord::Migration
  def change
    create_table :coursereviews do |t|
      t.text :body
      t.text :alumni
      t.string :coursename
      t.integer :user_id
      t.string :institutehandler_id

      t.timestamps null: false
    end
  end
end
