class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :uuid
      t.string :model
      t.text :memo

      t.timestamps null: false
    end
    add_index :devices, :uuid
    add_index :devices, :model
  end
end
