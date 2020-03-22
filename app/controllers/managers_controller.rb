class ManagersController < ApplicationController
  before_action :is_manager?

  def index

  if !params[:search].nil? and params[:search] != ""

    @team = Team.where(managermatricule: current_user.matricule.to_i).ids[0]
    @users = User.where(team_id: @team).search_by_nom_and_prenom(params[:search])
  else
    @team = Team.where(managermatricule: current_user.matricule.to_i).ids[0]
    @users = User.where(team_id: @team).order('nom ASC')
  end


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
