module Api
  class CountiesController < ApplicationController
    include ActionController::MimeResponds
    def index
      @counties = County.all
      render json: @counties, callback: params[:callback]
    end
  end
end