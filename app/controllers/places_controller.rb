class PlacesController < ApplicationController
 def index
  @prefecture = Prefecture.find(params[:prefecture_id])
  @places = @prefecture.places.includes(:user)
  @pins = @prefecture.pins.includes(:user)
 end

 def new
  @place = Place.new
  @prefecture = Prefecture.find(params[:prefecture_id])
 end

 def create
    @prefecture = Prefecture.find(params[:prefecture_id])
    @place = @prefecture.places.new(place_params)
    if @place.save
      redirect_to prefecture_places_path(@prefecture)
    else
      @places = @prefecture.places.includes(:user)
      @pins = @prefecture.pins.includes(:user)
      render :new
    end
 end

  private

  def place_params
    params.require(:place).permit(:name, :url ).merge(user_id: current_user.id)
  end
 
end
