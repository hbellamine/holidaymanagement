class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:home]

  def home
    if current_user.accesstype == "employe"
      redirect_to employees_path
    else
      redirect_to managers_path
    end

  end
end
