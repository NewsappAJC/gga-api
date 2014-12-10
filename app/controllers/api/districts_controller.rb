module Api
  class DistrictsController < ApplicationController
    include ActionController::MimeResponds
    def index
      @districts = District.all
      render json: @districts, callback: params[:callback]
    end

    def show
      @district = District.find(params[:id])
      render json: @district, callback: params[:callback]
    end
  end
end