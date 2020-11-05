class PinsController < ApplicationController
 def new
  @pin = Pin.new
  @prefecture = Prefecture.find(params[:prefecture_id])
 end

 def create
  @prefecture = Prefecture.find(params[:prefecture_id])
  @pin = @prefecture.pins.new(pin_params)
   if @pin.save
    redirect_to prefecture_places_path(@prefecture)
   else
    render :new
   end
 end

 private

  def pin_params
    params.require(:pin).permit(:title_id, :image).merge(user_id: current_user.id)
  end


end
