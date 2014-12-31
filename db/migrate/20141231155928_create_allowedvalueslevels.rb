class CreateAllowedvalueslevels < ActiveRecord::Migration
  def change
    create_table :allowedvalueslevels do |t|
      t.string :values

      t.timestamps null: false
    end
  end
end
