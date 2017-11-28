class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:review][:product_id]

    if @review.save
      flash[:notice] = "You have successfully added a REVIEW!!!!"
      redirect_to review_path(@review)
    end

  end



  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.comment = params[:review][:comment]
    @review.product_id = params[:review][:product_id]

    if @review.save
      flash[:notice] = "You have successfully edited this REVIEW!!!!"
      redirect_to review_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:notice] = "REVIEW DESTROYED!!!!"
      redirect_to product_path(@product)
    

    end
  end


end
