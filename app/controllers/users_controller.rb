class UsersController < ApplicationController

  def index
    @users =User.all
  end
@user = User.find(params[:id])
  def show
    
    @books = @user.books
  end

  def edit
    is_matching_login_user

    @user = User.find(params[:id])
  end

  def update
    is_matching_login_user

    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to users_path
    end
  end


end
