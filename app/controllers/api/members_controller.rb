module Api
  class MembersController < ApplicationController
    def index
      @members = Member.all
      render json: @members, callback: params[:callback]
    end

    def show
      @member = Member.find(params[:id])
      render json: @member, serializer: MemberDetailSerializer, callback: params[:callback]
    end

    def member_bills
      @bills = Member.find(params[:id]).primary_sponsorships, callback: params[:callback]
      render json: @bills
    end

    def member_committees
      @committees = Member.find(params[:id]).member_committees, callback: params[:callback]
      render json: @committees
    end

    # def members_by_session
    #   @members = Session.find(params[:session_id]).members

    #   render json: @members
    # end

    def members_by_house
      @members = Member.by_house(params[:house])
      render json: @members, callback: params[:callback]
    end

    def members_by_party
      @members = Member.by_party(params[:party])
      render json: @members, callback: params[:callback]
    end

    def members_by_house_district
      @members = Member.by_house_district(params[:house], params[:district]).first
      render json: @members, callback: params[:callback]
    end
  end
end
