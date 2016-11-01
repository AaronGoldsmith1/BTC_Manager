module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  #login error handling with before_action
  def logged_in?
      !current_user.nil?
  end

  # Confirms a logged-in user.
  def logged_in_user
     unless logged_in?
        flash[:danger] = "Please log in." #
        redirect_to login_url
     end
  end
end
