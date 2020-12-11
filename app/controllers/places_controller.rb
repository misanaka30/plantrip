class PlacesController < ApplicationController
 before_action :set_prefecture
 before_action :set_places_pins, only: :index

 def index
 end

 def new
   @place = Place.new
 end

 def create
   @place = @prefecture.places.new(place_params)
   if @place.save
    redirect_to prefecture_places_path(@prefecture)
   else
    set_places_pins
    render :new
   end
 end
 
 def destroy
   place = @prefecture.places.find(params[:id])
   place.destroy
   redirect_to prefecture_places_path(@prefecture)
 end

 private

 def place_params
   params.require(:place).permit(:name, :url ).merge(user_id: current_user.id)
 end

 def  set_prefecture
   @prefecture = Prefecture.find(params[:prefecture_id])
 end

 def set_places_pins
   @places = @prefecture.places.includes(:user)
   @pins = @prefecture.pins.includes(:user)
 end
 
end
