module Api
  class StateController < ApplicationController
    def index
      @state = State.first
      render json: @state,
             serializer: DistrictSerializer,
             callback: params[:callback]
    end
  end
end
