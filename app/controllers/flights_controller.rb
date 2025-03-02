class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map { |a| a.code }
    @dates = Flight.get_flight_dates
  end
end
