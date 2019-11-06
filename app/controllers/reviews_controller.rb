class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews
  end

  # def show
  # end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  # def set_review
  #   @review = Review.find(params[:id])
  # end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
