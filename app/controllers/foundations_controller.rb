class FoundationsController < ApplicationController
  before_action :get_true_shade

  def index
    @foundations = @true_shade.foundations
  end

  def new
    @foundation= Foundation.new
  end

  def create
    @foundation = Foundation.new(
      params.require(:foundation).permit(:true_shade)
      )
    # Attach this criterion to a decision
    # @user.foundation = id {:name, :brand, :product, :shade, :true_shade_id}
    # user.foundation.true_shade = @true_shade
    if user.foundation.save
      redirect_to true_shade_foundations_path(@true_shade, @foundation)
    end
  end

  def destroy
    Foundation.find(params[:id]).destroy
    redirect_to true_shade_foundations_path
  end

private
  def get_true_shade
    # Find our parent decision that we should attach to
    @true_shade = TrueShade.find(params[:true_shade_id])
  end

  # def check_security
  #   # If they're not logged in or they don't own this decision, boot them to the home page
  #   if (!current_user) || (@true_shade.user != current_user)
  #     redirect_to home_path
  #   end
  # end
end

