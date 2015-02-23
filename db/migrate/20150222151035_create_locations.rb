class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :comapny_id
      t.integer :device_id
      t.string :department
      t.string :location

      t.timestamps null: false
    end
    add_index :locations, :comapny_id
    add_index :locations, :device_id
  end
end
