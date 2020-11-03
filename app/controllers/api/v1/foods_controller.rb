class Api::V1::FoodsController < ApplicationController
  before_action :set_tracker

  def index
    @foods = @tracker.foods 
    render json: @foods 
  end


  def create
    
  end


  def show

  end


  def destroy

  end

  
  private

  def set_tracker
    @tracker = Tracker.find(params[:tracker_id])
  end


  def food_params
    params.require(:food).permit(:tracker_id, :name, :calories)
  end


end
