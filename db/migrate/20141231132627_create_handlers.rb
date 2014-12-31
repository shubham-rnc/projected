class CreateHandlers < ActiveRecord::Migration
  def change
    create_table :handlers do |t|
      t.string :institution
      t.string :level
      t.string :course
      t.string :specialization
      t.boolean :activation
      
      t.timestamps null: false
    end
  end
end
