class ReviewsController < ApplicationController

  def create
      @product = Product.find(params[:id])
      @review = @product.reviews.build(params[:review])

      if @review.save
        ;flash[:notice] = 'Review was successfully created.'
        redirect_to @picture
      else
        flash[:notice] = "Error creating review: #{@review.errors}"
        redirect_to @picture
      end
    end



  def edit

  end

  def update

  end

  def destroy

  end


end
