class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"

  def self.get_flight_dates
    times = Flight.select(:start)
    times
  end

  def flight_date_formatted
    start.strftime("%m/%d/%y - %H:%M")
  end

  def start_stripped
    start.strftime("%Y%m%d%H%M")
  end
end
