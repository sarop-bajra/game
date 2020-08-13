class UsersController < ApplicationController
  def new
    @user = User.new # the form_form helper needs '@user'
  end

  def create

    @user = User.create user_params
    # Check whether the above create was successful (ie created a
    # row in the users table ie the object has an id)
    # or if it failed due to a data validation error
    if @user.persisted?
      session[:user_id] = @user.id # log in the newly created account automatically!
      redirect_to root_path
    else
      render :new # show the form again directly, no redirect keeps all the data on the page
    end #if
  end # create

  def index
  end

  def show
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
