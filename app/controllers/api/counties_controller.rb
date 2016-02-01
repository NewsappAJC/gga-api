module Api
  class CountiesController < ApplicationController
    def index
      @counties = County.all
      render json: @counties, callback: params[:collback]
    end
  end
end