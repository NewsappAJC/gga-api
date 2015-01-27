class Api::BillStatusController < ApplicationController
  def on_date
    @events = BillStatusListing.on_date(params[:date])
    render json: @events, callback: params[:callback]
  end

  def recent
    date = params[:date] || Date.today
    @events = BillStatusListing.recent_events(date)
    render json: @events, callback: params[:callback]
  end
end
