class Api::DaysLeftController < ApplicationController
  def index
    @days_left = DaysLeft.first
    render json: @days_left, callback: params[:callback]
  end
end
