class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(
      restaurant_id: params[:restaurant_id],
      user_id: current_user.id,
      body: review_params["body"],
      score: review_params["score"]
      )
    if @review.save
      redirect_to restaurant_url(@review.restaurant)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
    @review = Review.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @review.update(review_params)
      redirect_to "/restaurants/#{@restaurant.id}/reviews/#{@review.id}"
    else
      render :edit
    end
  end

  def show
    @review = Review.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  private

  def review_params
    params.require(:review).permit(:body, :score)
  end

end


