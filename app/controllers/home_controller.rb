class HomeController < ApplicationController
  def index
  end

  def create_session
    session[:user] = params[:user]
    redirect_to root_path
  end
end
