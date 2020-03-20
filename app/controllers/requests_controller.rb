class RequestsController < ApplicationController
  def index
  end

  def create
  end

  def new
    @request = Request.new
    startdate = @request.startdate
    @managermatricule = Team.find(current_user.team.id).managermatricule
  end

  def destroy
  end

  def show
  end
end
