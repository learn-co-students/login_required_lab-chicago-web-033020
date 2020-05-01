class SecretsController < ApplicationController
  before_action :current_user

  def show
  end

  private

  def current_user
    redirect_to login_path unless session.include? :name
  end
end