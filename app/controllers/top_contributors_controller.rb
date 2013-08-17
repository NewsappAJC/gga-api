class TopContributorsController < ApplicationController
  def index
    @top_contributors = TopContributor.where("member_id = #{params[:id]}")
    render json: @top_contributors
  end
end
