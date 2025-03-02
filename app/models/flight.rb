class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"

  def self.get_flight_dates
    Flight.select(:start)
  end

  def flight_date_formatted
    start.strftime("%m/%d/%y")
  end

  def start_stripped
    start.strftime("%Y%m%d")
  end

  def id_and_duration
    "Flight ID: #{id}, Duration: #{duration} Hours"
  end
end
