class SecretsController < ApplicationController
  before_action :current_user

  def show
  end

  private

  def current_user
    unless session.include? :name
      redirect_to login_path
    end
  end

end