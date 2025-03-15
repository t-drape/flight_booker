class PassengerMailer < ApplicationMailer
  default from: "flightbooker@flb.com"

  def welcome_email
    @user = params[:passenger]
    @url = "http://[::1]:3000"
    mail(to: @user.email, subject: "Thanks for Booking your Flight with us!")
  end

end
