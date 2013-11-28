class GeolocatorController < ApplicationController
  def index
  end

  def set_session
    location = Geolocator.new(params[:latitude], params[:longitude])
    session[:current_position] = location
    head :no_content
  end
end