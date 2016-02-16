module Api
  class BillStatusController < ApplicationController
    def on_date
      @events = BillStatusListing.on_date(params[:date])
      render json: @events, callback: params[:callback]
    end

    def recent
      date = params[:date] || Date.today
      @events = BillStatusListing.recent_events(date)
      render json: @events, callback: params[:callback]
    end

    def summary
      date = params[:date] || Date.today
      events = BillStatusListing.recent_events(date)

      # first gather all the bills by type of event
      summary = {};
      events.each do |event|
        summary[event["description"]] = summary[event["description"]] || []
        summary[event["description"]].push(event)
      end

      # then munge them into an array of objects, each with the event type
      # name (:description) and an array of associated bills (:bills).
      @events_summary = summary.keys.map {|s| {description: s, bills: summary[s]}}
      render json: @events_summary, callback: params[:callback]
    end
  end
end