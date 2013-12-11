module Api
  class BillsController < ApplicationController
    def index
      @bills = Bill.all
      render json: @bills, callback: params[:callback]
    end

    def show
      @bill = Bill.find(params[:id])
      render json: @bill, serializer: BillShowSerializer, callback: params[:callback]
    end

    def house
      @house_bills = Bill.house.to_a
      render json: @house_bills, callback: params[:callback]
    end

    def senate
      @senate_bills = Bill.senate.to_a
      render json: @senate_bills, callback: params[:callback]
    end

    def by_type_number
      @bill = Bill.by_type_number(params[:type], params[:number]).first
      render json: @bill, serializer: BillShowSerializer, callback: params[:callback]
    end

    def count
      @bill_count = BillCount.first
      render json: @bill_count, callback: params[:callback]
    end

    def author
      @author = Bill.find(params[:id]).author
      render json: @author, callback: params[:callback]
    end

    def coauthors
      @coauthors = Bill.find(params[:id]).coauthors
      render json: @coauthors, callback: params[:callback]
    end
  end
end
