module Api
  class ContributionsSectorsController < ApplicationController
    def index
      @sectors = ContributionsSector.where("member_id = #{params[:id]}")
      render json: @sectors
    end
  end
end
