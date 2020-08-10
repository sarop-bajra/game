class SessionController < ApplicationController
  def new

  end

  # if Login successful create session
  def create
    user = User.find_by email: params[:email]
      if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path
      else
      flash[:error] = 'Invalid email or password'
      redirect_to login_path # show the login form again to correct errors
      end # login check

  end # create

  def destroy
    session[:user_id] = nil # This logs out the user
    redirect_to login_path # Go back to the logins
  end # destroy

end # SessionController
