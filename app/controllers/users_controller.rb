class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    # Bookings the user has made
    @my_bookings = current_user.bookings.includes(:boat)
    @my_boats = current_user.boats
    # Bookings made on the user's boats
    @boats_bookings = Booking.includes(:user, :boat).where(boat: current_user.boats)
    @my_boat_bookings = Booking.joins(:boat).where(boats: { user_id: current_user.id }).includes(:user, :boat)
  end
end
