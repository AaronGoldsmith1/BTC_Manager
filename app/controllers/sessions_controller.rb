class SessionsController < ApplicationController
  def new
    #@login = User.new
    @user = User.new
  end

  def create

    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      #set a cookie, so our browser knows we are who we say we are
      session[:user_id] = @user.id.to_s
      redirect_to users_path
      #redirect_to users_path
    else
      @user = User.new
      flash[:alert] = "Password and/or Email incorrect"
      render :new


    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end
end
