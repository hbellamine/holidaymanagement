class EmployeesController < ApplicationController
  def index
    @user = current_user
    @request = Request.new

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
