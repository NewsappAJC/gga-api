require 'spec_helper'

describe Api::BillsController, :type => :api do
  let!(:bill) { FactoryGirl.create(:bill) }
  let!(:base_url) { 'api/bills' }

  describe "GET 'index'" do
    before(:each) { get base_url }
    it "returns http success" do
      last_response.status.should eq(200)
    end

    it "should respond with json" do
      last_response.header['Content-Type'].should match('json')
    end
  end

  describe "GET 'show'" do
    before(:each) { get base_url + '/' + bill.id.to_s }

    it "should be a success" do
      last_response.status.should eq(200)
    end

    it "should respond with json" do
      last_response.header['Content-Type'].should match('json')
    end

    it "should return the correct bill id" do
      bill_response = JSON.parse(last_response.body)
      expect(bill_response['id']).to eq(bill.id)
    end
  end

  describe "GET 'house'" do
    before(:all) {
      FactoryGirl.create(:bill, document_type: 'HB')
      FactoryGirl.create(:bill, document_type: 'HR')
      FactoryGirl.create(:bill, document_type: 'SB')
      FactoryGirl.create(:bill, document_type: 'SR')
    }
    before(:each) { get base_url + '/house' }

    it "should be a success" do
      last_response.status.should eq(200)
    end

    it "should respond with json" do
      last_response.header['Content-Type'].should match('json')
    end

    it "should return house bills" do
      bill_response = JSON.parse(last_response.body)
      bill_response.each do |this_bill|
        this_bill['document_type'].should match(/^H/)
      end
    end

    it "should not return senate bills" do
      bill_response = JSON.parse(last_response.body)
      bill_response.each do |this_bill|
        this_bill['document_type'].should_not match(/^S/)
      end
    end
  end

  describe "GET 'senate'" do
    before(:all) {
      FactoryGirl.create(:bill, document_type: 'HB')
      FactoryGirl.create(:bill, document_type: 'HR')
      FactoryGirl.create(:bill, document_type: 'SB')
      FactoryGirl.create(:bill, document_type: 'SR')
    }
    before(:each) { get base_url + '/senate' }

    it "should be a success" do
      last_response.status.should eq(200)
    end

    it "should respond with json" do
      last_response.header['Content-Type'].should match('json')
    end

    it "should return senate bills" do
      bill_response = JSON.parse(last_response.body)
      bill_response.each do |this_bill|
        this_bill['document_type'].should match(/^S/)
      end
    end

    it "should not return house bills" do
      bill_response = JSON.parse(last_response.body)
      bill_response.each do |this_bill|
        this_bill['document_type'].should_not match(/^H/)
      end
    end
  end
end
