class LocationsController < ApplicationController
  before_action :authenticate_teacher!, only: [:new, :create, :edit, :update, :destroy]

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
        render root_url
      end
  end

  def edit
    @location = current_teacher.locations.find params[:id]
  end

  def update
    @location = current_teacher.locations.find params[:id]
    if @location.update_attributes location_params
      flash[:success] = "Location updated!"
      redirect_to root_url
    else
      flash[:failure] = "Update failed!"
      render root_url
    end
  end

  def destroy
    @location = current_teacher.locations.find(params[:id]).destroy
    flash[:success] = "Location deleted!"
    redirect_to root_url
  end

  private

    def location_params
      params.require(:location).permit(:name, :homepage, :street_address, :ward,
                                       :prefecture, :city, :post_code, :avatar)
    end
end
