class RequestsController < ApplicationController
  def index
    @requests = Request.where(user: current_user)
  end

  def myteamrequests
    @requests = Request.where(managermatricule: current_user.matricule).order('confirmed ASC')
  end


  def create

    managermatricule = Team.find(current_user.team.id).managermatricule
    startdate = Date.parse params[:request][:dates][0...10]
    enddate = Date.parse params[:request][:dates][14...24]
    nbofdays = (enddate - startdate).to_i

    if (current_user.paiddaysoff < nbofdays)
      redirect_to employees_path, alert: "Vos jours de congés sont insuffisants"
    else
      @request = Request.new(user: current_user, startdate: startdate, enddate: enddate,commentaire: params[:request][:commentaire], dates: params[:request][:dates], managermatricule: managermatricule )
      @request.save

      redirect_to employees_path, notice: "Votre demande a bien été prise en compte"
    end

  end

  def new
  end

  def edit
    @request = Request.find(params[:id])
    @request.confirmed = "Validé"
    @user = User.find(@request.user_id)
    @user.paiddaysoff = @user.paiddaysoff - ((@request.enddate - @request.startdate).to_i)
    #il faut envoyer le mail ici
    @request.save
    @user.save

    redirect_to myteam_requests_path, notice: "Le congé a bien été accepté"

  end

  def refus
    @request = Request.find(params[:id])
    @request.confirmed = "Refusé"
    #il faut envoyer le mail ici
    @request.save
    redirect_to myteam_requests_path, notice: "Le congé a bien été refusé"
  end


  def destroy
  end

  def show
  end
end



