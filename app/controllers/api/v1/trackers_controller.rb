class Api::V1::TrackersController < ApplicationController
  before_action :set_tracker, only: [:show, :destroy]

  def index
    @trackers = Tracker.all 
    render json: @trackers
  end


  def create
    @tracker = Tracker.new(tracker_params)
    if @tracker.save
      render json: @tracker 
    else
      render json: {error: 'Error, please try again.'}
    end
  end


  def show
    render json: @tracker
  end


  def destroy
    @tracker.destroy
  end

  
  private

  def set_tracker
    @tracker = Tracker.find(params[:id])
  end

  def tracker_params
    params.require(:tracker).permit(:day, :date, :totalcal)
  end


end


