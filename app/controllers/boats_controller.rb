class BoatsController < ApplicationController
  before_action :set_boat, only: [:show, :update, :destroy]

  def index
    @boats = Boat.all
  end

  def home
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to @boat, notice: 'Boat was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to @boat, notice: 'Boat was successfully udpated.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to boats_path, notice: 'Boat was successfully destroyed.'
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:content, :location, :capacity, :size, :url_img)
  end
end
