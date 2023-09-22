class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :date_of_reservation
      t.string :city
      t.references :user, null: false, foreign_key: true
      t.references :travel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
