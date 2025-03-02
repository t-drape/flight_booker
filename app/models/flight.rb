class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"

  def self.get_flight_dates
    @ugly = Flight.select(:start)
    @day_month_year = []
    @final = []
    @ugly.each do |f|
      flight_time = [ f.start.year, f.start.month, f.start.day ]
      if !@day_month_year.include?(flight_time)
        @final << f
      end
      @day_month_year << [ f.start.year, f.start.month, f.start.day ]
    end
    @final
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
