class CreateTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :travels do |t|
      t.float :price
      t.integer :trip_duration
      t.integer :group_size
      t.string :type
      t.integer :rating
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
