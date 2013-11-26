module Api
  class WatchedBillsController < ApplicationController
    def index
      @watched_bill = WatchedBill.all
      render json: @watched_bill
    end

    def show
      @watcehd_bill = WatchedBill.find(params[:id])
      render json: @watcehed_bill
    end

    def by_category
      @watcehd_bills = WatchedBill.by_category(params[:category]).to_a
      render json: @watcehd_bills
    end
  end
end