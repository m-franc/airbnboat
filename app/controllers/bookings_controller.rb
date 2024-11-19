class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  def index
    @booking = Booking.all
  end

  # GET /bookings/1
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @boats = Boat.all
    @booking_dates = { from: @booking.start_date, to: @booking.end_date }
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking, notice: 'La réservation a été créée avec succès.'
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
      redirect_to @booking, notice: 'La réservation a été mise à jour avec succès.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'La réservation a été supprimée avec succès.'
  end

  private

  # Méthode pour trouver la réservation par son ID
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Méthode pour filtrer les paramètres autorisés
  def booking_params
    params.require(:booking).permit(:user_id, :boat_id, :people)
  end
end
