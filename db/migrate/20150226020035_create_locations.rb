class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :company_id
      t.integer :device_id
      t.text :department
      t.text :place

      t.timestamps null: false
    end
    add_index :locations, :company_id
    add_index :locations, :device_id
  end
end
