module Api
  class ContributionsSectorsController < ApplicationController
    def index
      @sectors = ContributionsSector.where("member_id = #{params[:id]}")
      render json: @sectors, callback: params[:callback]
    end
  end
end
