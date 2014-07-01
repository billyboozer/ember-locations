class Api::LocationsController < ApplicationController
  respond_to :json

  def index
    respond_with Location.all
  end

  def show
    respond_with location
  end

  def create
    respond_with :api, Location.create(location_params)
  end

  def update
    respond_with location.update(location_params)
  end

  def destroy
    respond_with location.destroy
  end

  private

  def lead
    Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:title, :address, :lat, :lng, :comment)
  end

end
