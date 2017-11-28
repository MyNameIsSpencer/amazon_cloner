class ReviewsController < ApplicationController

  def create
    # @review = @product.reviews.build(review_params)
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    if @review.save
      flash[:notice] = "You have successfully added a review"
      redirect_to product_path(params[:product_id])
    end

    end



  def edit

  end

  def update

  end

  def destroy

  end


end
