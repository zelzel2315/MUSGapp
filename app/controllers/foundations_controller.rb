class FoundationsController < ApplicationController
  def index
  	@foundations = current_user.foundations.all
  end 

  def new
  	@foundation = current_user.foundations.new
  end

  def create
  	foundation = current_user.foundations.new(
  		params.require(:foundation).permit(:brand, :product, :shade)
  		)
  	if foundation.save
	  	redirect_to foundations_path
  	end
  end

  def destroy
  	current_user.foundations.find(params[:id]).destroy
  	redirect_to foundations_path
  end
end


# current_user.foundation.all