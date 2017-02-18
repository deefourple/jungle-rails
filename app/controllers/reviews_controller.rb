class ReviewsController < ApplicationController

  def create
    review = create_review
    if review.valid?
      redirect_to product_path(params[:product_id]), notice: 'Your review has successfully been posted'
    else
      redirect_to :back
    end
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to product_path(params[:product_id]), notice: 'fuckin A'
  end

  private

  def create_review
    review = Review.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      description: params["review"][:description],
      rating: params["review"][:rating]
      )
    review.save!
    review
  end


end
