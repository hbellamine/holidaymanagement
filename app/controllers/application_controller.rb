class ApplicationController < ActionController::Base
  before_action :authenticate_user!

    before_action :configure_permitted_parameters, if: :devise_controller?




  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname,:department, :matricule, :accesstype,  :level, :paiddaysoff, :unpaiddaysoff, :absenteism, :injurydaysoff])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname,:department, :matricule, :accesstype,  :level, :paiddaysoff, :unpaiddaysoff, :absenteism, :injurydaysoff])
  end


   def after_sign_in_path_for(resource)
     if resource.accesstype == 'employe'
        employees_path

     elsif resource.accesstype == 'manager'
        managers_path

     elsif resource.accesstype == 'hrmanager'
        hrmanagers_path

     elsif resource.accesstype == 'safetymanager'
        safetymanagers_path

    end
  end

end
