class Api::V1::FoodsController < ApplicationController

  def index

  end


  def create

  end


  def show

  end


  def destroy

  end

  
  private

  def food_params
    params.require(:food).permit(:tracker_id, :name, :calories)
  end


end
