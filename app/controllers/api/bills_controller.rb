module Api
  class BillsController < ApplicationController
    def index
      @bills = Bill.all
      render json: @bills
    end

    def show
      @bill = Bill.find(params[:id])
      render json: @bill
    end

    def house
      @house_bills = Bill.house.to_a
      render json: @house_bills
    end

    def senate
      @senate_bills = Bill.senate.to_a
      render json: @senate_bills
    end

    def by_type_number
      @bill = Bill.by_type_number(params[:type], params[:number]).first
      render json: @bill
    end

    def count
      @bill_count = BillCount.first
      render json: @bill_count
    end
  end
end
