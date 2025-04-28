class HomeController < ApplicationController
  def index
    @employees = Employee.all
    @skills = Skill.all
  end

  def create_session
    session[:user] = params[:user]
    redirect_to root_path
  end
end
