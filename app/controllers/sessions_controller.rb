class SessionsController < ApplicationController
  def new

    @user = User.new
  end

  def create

    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id.to_s
      redirect_to users_path
    else
      @user = User.new
      flash.now[:alert] = "Password and/or Email Incorrect"
      render :new


    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end
end
