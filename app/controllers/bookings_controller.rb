class BookingsController < ApplicationController
  def new
    @departure_airport = Airport.where(id: Flight.select(:departure_airport_id).where(id: params[:flight_id]))[0].code
    @arrival_airport = Airport.where(id:  Flight.select(:arrival_airport_id).where(id: params[:flight_id]))[0].code
    @flight_number = params[:flight_id]
    @date = Flight.where(id: params[:flight_id])[0]
    @num_pass = params[:num_passengers].to_i

    @booking = Booking.new
    @num_pass.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      redirect_to :root
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @passengers = @booking.passengers
    @flight = Flight.where(id: @booking.flight_id)[0]
    @departure = Airport.where(id: @flight.departure_airport_id)[0].code
    @arrival = Airport.where(id: @flight.arrival_airport_id)[0].code
    @duration = @flight.duration
    @time = @flight.flight_time_formatted
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id,
      passengers_attributes: [ :name, :email ])
    end
end
