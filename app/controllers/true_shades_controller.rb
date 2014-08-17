class TrueShadesController < ApplicationController
  # before_action :get_true_shade


  def home
    @user = User.new
  end

  def index
    # @true_shades = TrueShade.all
    if !current_user
      redirect_to home_path
      return
    end 
    # @true_shades = TrueShade.where(user_id: current_user.id)
    @true_shades = current_user.foundation.true_shade
  end 

  def new
    if current_user
      @true_shade = TrueShade.new
    else
      redirect_to new_session_path
    end
  end

  def create
    # Make a new true shade object that is attached to the user
    true_shade = current_user.true_shade.new(params.require(:true_shade).permit(:name, :description))
    # With this decision object, attach it to the user
    # decision.user = current_user
    if true_shade.save
      redirect_to true_shades_path
    end
    # if !current_user
    #   redirect_to new_session_path
    #   return
    # end    
  end

  def show
    @true_shade = TrueShade.find(params[:id])
    @foundations = Foundation.all
    # @foundations = Foundation.find(params[:id])
  end

  def destroy
    TrueShade.find(params[:id]).destroy
    redirect_to true_shades_path
  end


end


