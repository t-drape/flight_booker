class RemoveBelongsToFromBookings < ActiveRecord::Migration[8.0]
  def change
    drop_table :bookings
    create_table "bookings", force: :cascade do |t|
      t.integer "flight_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index [ "flight_id" ], name: "index_bookings_on_flight_id"
    end
  end
end
