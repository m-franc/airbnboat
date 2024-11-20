class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_boat, only: [:index, :new, :create, :show] # For nested routes

  # GET /reviews
  # GET /boats/:boat_id/reviews (if nested)
  def index
    if @boat
      @reviews = @boat.reviews
    else
      @reviews = Review.all
    end
  end

  # GET /reviews/:id
  def show
  end

  # GET /boats/:boat_id/reviews/new (if nested)
  def new
    @review = @boat.reviews.build
  end

  # POST /boats/:boat_id/reviews (if nested)
  def create
    @review = @boat.reviews.build(review_params)
    @review.user = current_user # Assign the current user if logged in

    if @review.save
      redirect_to boat_reviews_path(@boat), notice: 'Review was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /reviews/:id/edit
  def edit
  end

  # PATCH/PUT /reviews/:id
  def update
    if @review.update(review_params)
      redirect_to @review, notice: 'Review was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/:id
  def destroy
    @review.destroy
    redirect_to reviews_path, notice: 'Review was successfully deleted.'
  end

  private

  # Set the review for show, edit, update, and destroy actions
  def set_review
    @review = Review.find(params[:id])
  end

  # Set the boat for nested routes
  def set_boat
    @boat = Boat.find(params[:boat_id]) if params[:boat_id]
  end

  # Only allow a trusted parameter list through
  def review_params
    params.require(:review).permit(:review, :rating)
  end
end
