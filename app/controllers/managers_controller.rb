class ManagersController < ApplicationController
  before_action :is_manager?

  def index
    @team = Team.where(managermatricule: current_user.matricule.to_i).ids[0]
    @users = User.where(team_id: @team).order('nom ASC')
  end

  def create
  end

  def new
  end

  def destroy
  end

  def show
  end

     def is_manager?
      # check if user is a admin
      # if not admin then redirect to where ever you want

      if (current_user.accesstype != "manager")
        redirect_to employees_path
      end

    end
end
