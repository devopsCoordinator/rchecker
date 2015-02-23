class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :area_id
      t.integer :representative_id
      t.text :memo

      t.timestamps null: false
    end
    add_index :companies, :name
  end
end
