class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :main_picture
      t.string :description

      t.timestamps
    end
  end
end
