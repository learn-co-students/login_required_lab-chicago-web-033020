class SessionsController < ApplicationController

  def new
  end

  def create
    #if the login is valid
    if params[:name] && !params[:name].empty?
    #set the params as session[:name]
      session[:name] = params[:name]
    #and redirect to the welcome page
      redirect_to welcome_path
    #else, redirect to the get/login page
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end