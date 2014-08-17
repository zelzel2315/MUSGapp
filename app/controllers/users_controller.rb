class UsersController < ApplicationController
  def index
    @users = User.all
  end

  # prepare to show sign-up form
  def new
    @user = User.new
    @is_signup = true 
  end 
  # acutally build user
  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation, :foundation_id))
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to user_path(@user)
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
      render 'new'
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
