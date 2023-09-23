class CreateTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :travels do |t|
      t.float :price
      t.integer :trip_duration
      t.integer :group_size
      t.string :travel_type
      t.integer :rating
      t.bigint :place_id, null: false

      t.timestamps
    end
  end
end
