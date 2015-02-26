class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :uuid
      t.string :model_type
      t.text :memo

      t.timestamps null: false
    end
    add_index :devices, :uuid ,:unique => true
    add_index :devices, :model_type
  end
end
