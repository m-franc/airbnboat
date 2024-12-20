class BoatsController < ApplicationController
  before_action :set_boat, only: [:show, :update, :edit, :destroy]
  before_action :authenticate_user!, only: [:new, :create]

  def index
    if params[:query].present?
      @boats = Boat.search_by_location_and_name(params[:query])
    else
    @boats = Boat.all
    end
  end

  def home
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
    @review = Review.new
    bookings_dates = @boat.bookings.pluck(:start_date, :end_date)
    @dates = bookings_dates.map { |booking| { from: booking[0], to: booking[1] } }
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.new(boat_params)
    if @boat.save
      flash[:notice] = 'Boat was successfully created!'
      redirect_to @boat
    else
      flash.now[:alert] = 'Failed to create the boat. Please correct the errors below.'
      render :new
    end
  end

  def edit
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      redirect_to @boat, notice: 'Boat was successfully updated.'
    else
      render :edit, alert: 'Could not update the boat. Please create a new one.', status: :unprocessable_entity
    end
  end

  def destroy
    if @boat.destroy
      redirect_to root_path, notice: 'Boat was successfully destroyed.'
    else
      redirect_to boats_path, alert: 'Failed to delete the boat.'
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name,
                                 :content,
                                 :location,
                                 :capacity,
                                 :size,
                                 :daily_price,
                                 :url_img,
                                 :url_img_two,
                                 :url_img_three)
  end
end
