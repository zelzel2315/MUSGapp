class FoundationsController < ApplicationController
  # before_action :get_true_shade

  def index
    @foundations = @true_shade_id.foundations
  end

  def new
    @foundation = Foundation.new
  end  

  def create
    @foundation = Foundation.new(
      params.require(:foundation).permit(:true_shade, :brand, :product, :shade)
      )
    # Attach this criterion to a decision
    # user.foundation.true_shade = @true_shade
    foundation.true_shade = @foundation 
    if user.foundation.save
      redirect_to new_true_shade_foundations_path(@true_shade.id) 
    end
  end

  def show
    @foundation = Foundation.find(params[:id])
  end

  def edit
     @user = User.new(params.require(:user).permit(:brand, :product, :shade))
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to true_shade_path
    else 
      render 'new'
    end
  end

  def destroy
    Foundation.find(params[:id]).destroy
    redirect_to true_shade_foundations_path(@true_shade.id)
  end

# private
#   def get_true_shade
#     # Find our parent decision that we should attach to
#     @true_shade = TrueShade.find(params[:true_shade_id])
#   end

  # def check_security
  #   # If they're not logged in or they don't own this decision, boot them to the home page
  #   if (!current_user) || (@true_shade.user != current_user)
  #     redirect_to home_path
  #   end
  # end
end

