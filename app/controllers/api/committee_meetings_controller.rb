module Api
  class CommitteeMeetingsController < ApplicationController
    def index
      @meetings = CommitteeMeeting.all
      render json: @meetings, callback: params[:callback]
    end

    def today
      date = params[:date] || Date.today.strftime("%Y-%m-%d")
      @meetings = CommitteeMeeting.today(date)
      render json: @meetings, callback: params[:callback]
    end

    def tomorrow
      @meetings = CommitteeMeeting.tomorrow
      render json: @meetings, callback: params[:callback]
    end

    def this_week
      date = params[:date] || Date.today.strftime("%Y-%m-%d")
      @meetings = CommitteeMeeting.this_week(date)
      render json: @meetings, callback: params[:callback]
    end

    def next_week
      date = params[:date] || Date.today.strftime("%Y-%m-%d")
      @meetings = CommitteeMeeting.next_week(date)
      render json: @meetings, callback: params[:callback]
    end

    def by_chamber_today
      date = params[:date] || Date.today.strftime("%Y-%m-%d")
      chamber = params[:chamber]
      @meetings = CommitteeMeeting.by_chamber(chamber).today(date)
      render json: @meetings, callback: params[:callback]
    end
  end
end

