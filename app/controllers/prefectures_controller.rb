class PrefecturesController < ApplicationController
  def index
  end

  def new
    @prefecture = Prefecture.new
  end

  def create
    @prefecture = Prefecture.new(prefecture_params)
   if @prefecture.save
    redirect_to root_path
   else
    render :new
   end
  end

  def destroy
    prefecture = Prefecture.find(params[:id])
    prefecture.destroy
    redirect_to root_path
  end


  private

   def prefecture_params
    params.require(:prefecture).permit(:name, user_ids: [])
   end
end
