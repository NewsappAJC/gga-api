module Api
  class SessionsController < ApplicationController
    # GET /sessions
    # GET /sessions.json
    def index
      @sessions = Session.all
      render json: @sessions, callback: params[:callback]
    end

    # GET /sessions/1
    # GET /sessions/1.json
    def show
      @session = Session.find(params[:id])
      render json: @session, callback: params[:callback]
    end
  end
end