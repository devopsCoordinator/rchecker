class AddColumnElapsedtimeToSupplys < ActiveRecord::Migration
  def change
  	  	 add_column :supplies, :elapsed_time, :float
  end
end
