class Api::DaysController < ApplicationController
  def index
    @days = Day.all
    render json: @days, callback: params[:callback]
  end

  def yesterday
    @day = Day.yesterday
    render json: @day, callback: params[:callback]
  end

  def recent
    date = params[:date] || Date.today
    @day = Day.recent(date)
    render json: @day, callback: params[:callback]
  end
end
