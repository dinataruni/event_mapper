class GeolocatorController < ApplicationController
  def index
  end

  def set_session
    session[:current_longitude] = params[:longitude]
    session[:current_latitude] = params[:latitude]
    head :no_content
  end
end