class Api::V1::FoodsController < ApplicationController
  before_action :set_tracker

  def index
    @foods = @tracker.foods 
    render json: @foods 
  end


  def create
    @food = @tracker.foods.new(food_params)
    @tracker.update_cal(@food)
    if @food.save
      render json: @food 
    else
      render json: {error: 'Error, please try again.'}
    end
  end


  def show
    @food = Food.find(params[:id])
    render json: @food 
  end


  def destroy
    @food = Food.find(params[:id])
    @food.destroy
  end

  
  private

  def set_tracker
    @tracker = Tracker.find(params[:tracker_id])
  end


  def food_params
    params.require(:food).permit(:tracker_id, :name, :calories)
  end


end
