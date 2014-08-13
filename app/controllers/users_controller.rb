class UsersController < ApplicationController
  def index
    @users = User.all
    # if current_user
    #   @true_shades = current_user.true_shade.all
    #   @true_shade = current_user.true_shade.new
    #   @foundations = @true_shade.foundations
    #   @foundation = Foundation.new
    # end
  end

  # prepare to show sign-up form
  def new
    @user = User.new
    @is_signup = true
  end
  # acutally build user
  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation, :foundation_id))
    @user_foundation = @user.foundation_id
    @foundation = Foundation.find(@user_foundation)
    @fts = @foundation.true_shade
    @true_shade = TrueShade.find(@fts)
    @user.true_shade = @true_shade 
    # @user.foundation = id([:name, :brand, :product, :shade, :true_shade_id])
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to true_shades_path(@true_shades)
    else 
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
     @user = User.new(params.require(:user).permit(:brand, :product, :shade))
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to true_shade_path
    else 
      redirect_to new_user_path
    end
  end

  def update
  end

  def destroy
    User.find(params[:id]).destroy
    # Exactly the same idea as this little number:
#    User.find_by(id: params[:id])
    redirect_to users_path
  end
end
