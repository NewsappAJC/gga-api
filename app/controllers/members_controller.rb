class MembersController < ApplicationController
  def index
    @members = Member.all

    render json: @members
  end

  def show
    @member = Member.find(params[:id])

    render json: @member
  end

  # def members_by_session
  #   @members = Session.find(params[:session_id]).members

  #   render json: @members
  # end

  def members_by_house
    @members = Member.by_house(params[:house])

    render json: @members
  end

  def members_by_party
    @members = Member.by_party(params[:party])

    render json: @members
  end

def members_by_house_district
  @members = Member.by_house_district(params[:house], params[:district]).first

  render json: @members
end
end
