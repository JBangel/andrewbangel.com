class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_username(user_params[:username])

    if !@user && User.all.size == 0 then
      @user = User.new(user_params)
      render "users/new"
    else
      @user = @user.try(:authenticate, user_params[:password])
      if @user
        session[:user_id] = @user.id
        redirect_to root_url, :notice => "Logged in!"
      else
        redirect_to root_url, :notice => "Invalid email or password!"
      end
    end      
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
