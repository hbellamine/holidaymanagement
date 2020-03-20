class HrmanagersController < ApplicationController
  def index

    @team = Team.where(managermatricule: current_user.matricule.to_i ).ids[0]
    @users = User.where(team_id: @team)
  end

  def create
  end

  def new
  end

  def destroy
  end

  def show
  end
end
