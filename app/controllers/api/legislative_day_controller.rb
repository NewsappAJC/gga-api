module Api
  class LegislativeDayController < ApplicationController
    def index
      @legislative_days = LegislativeDay.where("legislative_day_date < '#{Time.now.to_date}'")
      render json: @legislative_days, callback: params[:callback]
    end

    def yesterday
      @yesterday = LegislativeDay.yesterday
      render json:    @yesterday, callback: params[:callback]
    end
  end
end

