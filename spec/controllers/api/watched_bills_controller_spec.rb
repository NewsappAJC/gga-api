require 'spec_helper'

describe Api::WatchedBillsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'by_category'" do
    it "returns http success" do
      get 'by_category'
      response.should be_success
    end
  end

end
