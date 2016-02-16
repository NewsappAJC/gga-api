module Api
  class CommitteeMeetingsController < ApplicationController
    def index
      @meetings = CommitteeMeeting.all
      render json: @meetings, callback: params[:callback]
    end

    def today
      @meetings = CommitteeMeeting.today
      render json: @meetings, callback: params[:callback]
    end

    def tomorrow
      @meetings = CommitteeMeeting.tomorrow
      render json: @meetings, callback: params[:callback]
    end

    def this_week
      @meetings = CommitteeMeeting.this_week
      render json: @meetings, callback: params[:callback]
    end

    def next_week
      @meetings = CommitteeMeeting.next_week
      render json: @meetings, callback: params[:callback]
    end
  end
end