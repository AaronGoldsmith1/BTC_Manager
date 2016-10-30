class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:login][:email])
    if user && user.authenticate(params[:login][:password])
      #set a cookie, so our browser knows we are who we say we are
      session[:user_id] = user.id.to_s
      render json: session
      #redirect_to users_path
    else
      render json:user
    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end
end
