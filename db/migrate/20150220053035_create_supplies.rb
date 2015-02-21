class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :uuid
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps null: false
    end
    add_index :supplies, :uuid
  end
end
