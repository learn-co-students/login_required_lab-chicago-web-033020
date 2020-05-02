class SessionsController < ApplicationController

  def index

  end
  
  def new
    
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to root_path  
    end
  end

  def destroy
    session.delete :name
  end

end