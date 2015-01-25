class CreateInstitutehandlers < ActiveRecord::Migration
  def change
    create_table :institutehandlers do |t|
      t.string :name
      t.string :affiliation
      t.integer :Established
      t.string :affiliation
      t.string :type
      t.string :city
      t.string :state
      t.string :country
      t.text :address
      t.text :descintroduction
      t.text :descacademics
      t.text :descinfra
      t.text :desceaa
      t.text :descnotablesuccess
      t.string :descmotto
      t.text :desccampus
      t.decimal :latitute
      t.decimal :longitude
      t.string :accomodation
      t.string :website

      t.timestamps null: false
    end
  end
end
