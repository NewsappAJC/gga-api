module Api
  class MembersController < ApplicationController
    def index
      @members = Member.where("vacant = 'current'")
      render json: @members, callback: params[:callback]
    end

    def show
      @member = Member.find(params[:id])
      render json: @member, serializer: MemberDetailSerializer, callback: params[:callback]
    end

    def member_bills
      @bills = Member.find(params[:id]).primary_sponsorships
      render json: @bills, callback: params[:callback]
    end

    def member_committees
      @committees = Member.find(params[:id]).member_committees
      render json: @committees, callback: params[:callback]
    end

    def member_votes
      @votes = Member.find(params[:id]).member_votes
      render json: @votes, callback: params[:callback]
    end

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

    def by_last_name
      @members = Member.by_last_name(params[:lname])
      render json: @members, callback: params[:callback]
    end
  end
end
