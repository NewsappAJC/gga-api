class Api::BillStatusController < ApplicationController
  def on_date
    @events = BillStatusListing.on_date(params[:date])
    render json: @events, callback: params[:callback]
  end
end
