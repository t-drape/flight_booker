class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.datetime :start, null: false
      t.time :duration, null: false
      
      t.integer "arrival_airport_id"
      t.index [ "arrival_airport_id" ], name: "index_arrival_airport_id"
      t.integer "departure_airport_id"
      t.index [ "departure_airport_id" ], name: "index_departure_airport_id"
      t.timestamps
    end
  end
end
