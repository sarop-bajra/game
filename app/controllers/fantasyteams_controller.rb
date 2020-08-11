class FantasyteamsController < ApplicationController
  # Let's decide that all the fantasyteam-modifying pages require a user
  # to be logged in (because fantasyteams belong_to users)
  # BUT you don't have to be logged in to see the index of fantasyteams
  # or to view the details of specific fantasyteams
  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @fantasyteam = Fantasyteam.new
  end # new

  def create
    # Create fantasyteam, and associate it with the logged-in user
    @fantasyteam = Fantasyteam.new fantasyteam_params
    @fantasyteam.user_id = @current_user.id
    @fantasyteam.save
    redirect_to fantasyteams_path
  end # create

  def index
    @fantasyteams = Fantasyteam.all
  end # index

  def show
    @fantasyteam = Fantasyteam.find params[:id] # from /fantasyteams/:id
  end # show

  def edit
    @fantasyteam = Fantasyteam.find params[:id]
    redirect_to fantasyteams_path unless @fantasyteam.user_id == @current_user.id
  end

  def update
    fantasyteam = Fantasyteam.find params[:id]
    if fantasyteam.user != @current_user
      redirect_to fantasyteams_path
      return # leave the function early!! i.e. dont do the update below
    end

    fantasyteam.update fantasyteam_params # actually perform the update using the strong params

    redirect_to fantasyteams_path(fantasyteam) # you can leave off .id when you pass an object
  end

  def destroy
  end

  def fantasyteam_params
    params.require(:fantasyteam).permit(:name, :image)
  end # fantasyteam_params
end # FantasyteamsController
