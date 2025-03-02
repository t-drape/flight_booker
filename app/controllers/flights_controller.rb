class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map { |a| a.code }
    @all_flights_to_and_from = Flight.where(arrival_airport_id: (Airport.select(:id).where(code: params[:arrival_airport_code]))).where(departure_airport_id: (Airport.select(:id).where(code: params[:departure_airport_code])))
    @correct_time_flights = @all_flights_to_and_from.select { |f| f.start_stripped == params[:date] }
  end
end