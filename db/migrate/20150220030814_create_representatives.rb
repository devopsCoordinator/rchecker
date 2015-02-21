class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.integer :area_id
      t.text :memo

      t.timestamps null: false
    end
    add_index :representatives, :name
    add_index :representatives, :email
    add_index :representatives, :mobile
  end
end
