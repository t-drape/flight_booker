class ReverseChanges < ActiveRecord::Migration[8.0]
  def change
    drop_table :bookings
    drop_table :bookings_passengers
    create_table :bookings do |t|
      t.belongs_to :passenger
      t.belongs_to :flight
      t.timestamps
    end
  end
end
