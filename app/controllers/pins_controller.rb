class PinsController < ApplicationController
  before_action :set_prefecture

 def new
  @pin = Pin.new
 end

 def create
  @pin = @prefecture.pins.new(pin_params)
   if @pin.save
    redirect_to prefecture_places_path(@prefecture)
   else
    render :new
   end
 end

 def destroy
  pin = @prefecture.pins.find(params[:id])
  pin.destroy
  redirect_to prefecture_places_path(@prefecture)
 end

 private

  def pin_params
    params.require(:pin).permit(:title_id, :image).merge(user_id: current_user.id)
  end

  def set_prefecture
    @prefecture = Prefecture.find(params[:prefecture_id])
  end

end
