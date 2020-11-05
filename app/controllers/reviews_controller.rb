class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.cocktail = Cocktail.find(params[:cocktail_id])
    if @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      raise
    end
  end

  private

  def review_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
