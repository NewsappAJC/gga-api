module Api
  class VotesController < ApplicationController
    def index
      @votes = Vote.all
      render json: @votes, callback: params[:callback]
    end

    def show
      @vote = Vote.find(params[:id])
      render json: @vote, serializer: VoteDetailSerializer, callback: params[:callback]
    end

    def for_bill
      @votes = Bill.find(params[:bill_id]).votes
      render json: @votes, callback: params[:callback]
    end

    def for_bill_with_detail
      @votes = Bill.find(params[:bill_id]).votes
      render json: @votes, each_serializer: VoteDetailSerializer, callback: params[:callback]
    end

    def on_date
      @votes = Vote.on_date(params[:date])
      render json: @votes, each_serializer: VoteSerializer, callback: params[:callback]
    end
  end
end
