class RenameTypeInTravels < ActiveRecord::Migration[7.0]
  def change
    rename_column :travels, :type, :travel_type
  end
end
