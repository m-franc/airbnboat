class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @boat = Boat.find(params[:boat_id])
    bookings_dates = @boat.bookings.pluck(:start_date, :end_date)
    @dates = bookings_dates.map { |booking| { from: booking[0], to: booking[1] } }
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    dates = params["booking"]["start_date"].split("to").map(&:strip)
    @booking.start_date = dates[0]
    @booking.end_date = dates[1]
    @booking.boat = Boat.find(params[:boat_id])
    tripday = (@booking.end_date.to_time.day - @booking.start_date.to_time.day).to_i
    @booking.total_price = tripday * @booking.boat.daily_price
    if @booking.save!
      redirect_to user_dashboard_path, notice: 'Booking was succesfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /bookings/1/edit
  def edit
  end

  # PATCH/PUT /bookings/1
  def update
    if @booking.update(booking_params)
      redirect_to bookings_path, notice: 'La réservation a été mise à jour avec succès.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: 'La réservation a été supprimée avec succès.'
  end

  private

  # Méthode pour trouver la réservation par son ID
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # def set_boat
  #   @boat = Boat.find(params[:boat_id])
  # end

  # Méthode pour filtrer les paramètres autorisés
  def booking_params
    params.require(:booking).permit(:boat_id, :people, :user_id)
  end
end
