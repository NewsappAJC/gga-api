module Api
  class WatchedBillsController < ApplicationController
    def index
      @watched_bill = WatchedBill.all
      render json: @watched_bill, callback: params[:callback]
    end

    def show
      @watcehd_bill = WatchedBill.find(params[:id])
      render json: @watcehed_bill, callback: params[:callback]
    end

    def by_category
      @watcehd_bills = WatchedBill.by_category(params[:category]).to_a
      render json: @watcehd_bills, callback: params[:callback]
    end
  end
end