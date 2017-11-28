class ReviewsController < ApplicationController

  def create
    # @review = @product.reviews.build(review_params)
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    if @review.save
      flash[:notice] = "You have successfully added a review"
      redirect_to product_path(params[:product_id])
    else
      flash[:notice] = "Review could not be added."
      redirect_to product_path(params[:product_id])
    end
    end



  def edit
  @product = Product.find(params[:id])
  @review  = Review.find(params[:product_id])
  end

    def update
      @review  = Review.find(params[:id])
      @review.comment = params[:review][:comment]
      @review.product_id = params[:product_id]

  if @review.save
      flash[:notice] = "You have successfully added a review"
      redirect_to product_path(params[:product_id])
    else
      flash[:notice] = "Review could not be saved."
      redirect_to edit_product_review_path(@review)
    end

  end

  def destroy

  end


end
