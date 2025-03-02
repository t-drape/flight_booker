class PassengersBookingsHasBelongsTo < ActiveRecord::Migration[8.0]
  def change
    drop_table :bookings
    create_table :bookings, force: :cascade do |t|
      t.integer "flight_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index [ "flight_id" ], name: "index_bookings_on_flight_id"
    end

    create_table "bookings_passengers", id: false do |t|
      t.belongs_to :passenger
      t.belongs_to :booking
    end
  end
end
