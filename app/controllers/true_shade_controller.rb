class TrueShadeController < ApplicationController
  def index
    true_shade = True_shade.find(params[:user_id])
  	# @true_shade = @foundation.true_shade
  end

  def new
    @true_shade = @current_user.find(params[:brand, :product, :shade])
  	# @review= Review.new
  end 

  def create
   #  @true_shade = true_shade.find(params[:true_shade_id])
  	# # review = Review.new(
  	# # 	params.require(:review).permit(:text, :rating)
  	# # 	)
   # #  review.true_shade = @review
  	# if review.save
	  # 	redirect_to true_shade_reviews_path(@true_shade.id)
  	# end
  end

  # def destroy
  #   @true_shade = true_shade.find(params[:true_shade_id])
  # 	Reviews.find(params[:id]).destroy
  # 	redirect_to true_shade_reviews_path(@true_shade.id)
  # end
end

