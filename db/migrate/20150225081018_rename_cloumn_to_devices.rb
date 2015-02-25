class RenameCloumnToDevices < ActiveRecord::Migration
  def change
  	rename_column :devices, :model, :model_type
  end
end
