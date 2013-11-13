require 'spec_helper'

describe Api::BillsController do

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

  describe "GET 'house'" do
    it "returns http success" do
      get 'house'
      response.should be_success
    end
  end

  describe "GET 'senate'" do
    it "returns http success" do
      get 'senate'
      response.should be_success
    end
  end

end
