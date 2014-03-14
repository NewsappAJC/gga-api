module Api
  class PredictionResultsController < ApplicationController
    def index
      @predictions = PredictionResult.all
      render json: @predictions, callback: params[:callback]
    end
  end
end
