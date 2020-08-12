class TeamsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
