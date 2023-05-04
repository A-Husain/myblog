class UsersController < ApplicationController
  #create a new user 
  def new
    @user = User.new
  end

  def profile
    @user.update(views: @user.views + 1)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      flash.now[:notice] = @user.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
