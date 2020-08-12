class PlayersController < ApplicationController
  def new
  end

  def create
  end

  def index
    @players = Player.all
  end

  def show
    @player = Player.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
