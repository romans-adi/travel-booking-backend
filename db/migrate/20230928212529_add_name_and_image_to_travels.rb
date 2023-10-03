class AddNameAndImageToTravels < ActiveRecord::Migration[7.0]
  def change
    add_column :travels, :name, :string
    add_column :travels, :image, :string
  end
end
