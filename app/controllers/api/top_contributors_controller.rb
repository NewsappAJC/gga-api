module Api
  class TopContributorsController < ApplicationController
    def index
      @top_contributors = TopContributor.where("member_id = #{params[:id]}")
      render json: @top_contributors, callback: params[:callback]
    end
  end
end