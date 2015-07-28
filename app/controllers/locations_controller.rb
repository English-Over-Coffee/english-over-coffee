class LocationsController < ApplicationController
  before_action :authenticate_teacher!, only: [:new, :create, :destroy]

  def index
    @locations = Location.all
  end

  def new
   @location = current_teacher.locations.build
  end

  def create
    @location = current_teacher.locations.build(location_params)
      if @location.save
        flash[:success] = "Location created!"
        redirect_to root_url
      else
        render '/'
      end
  end

  def destroy
  end

  private

    def location_params
      params.require(:location).permit(:name, :homepage, :street_address, :ward,
                                       :prefecture, :city, :post_code, :avatar)
    end
end
