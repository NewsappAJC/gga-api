require 'spec_helper'

describe Api::BillStatusController do

  describe "GET 'on_date'" do
    it "returns http success" do
      get 'on_date'
      response.should be_success
    end
  end

end
