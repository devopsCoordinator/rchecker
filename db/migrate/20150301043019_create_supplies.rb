class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :uuid
      t.datetime :start_date
      t.datetime :end_date
      t.float :elapsed_time

      t.timestamps null: false
    end
    add_index :supplies, :uuid
  end
end
