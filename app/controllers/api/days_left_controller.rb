module Api
  class DaysLeftController < ApplicationController
    def index
      @days_left = DaysLeft.first
      render json: @days_left, callback: params[:callback]
    end
  end
end