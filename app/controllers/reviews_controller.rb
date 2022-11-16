class ReviewsController < ApplicationController
   # add new restaurant (create)
  # new

  def new
    #@review = Review.new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
