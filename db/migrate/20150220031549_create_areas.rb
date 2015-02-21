class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.text :memo

      t.timestamps null: false
    end
    add_index :areas, :name
  end
end
