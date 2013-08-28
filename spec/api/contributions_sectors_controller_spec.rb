require 'spec_helper'

describe Api::ContributionsSectorsController, :type => :api do
  before(:all) {
    FactoryGirl.create(:contributions_sector)
  }
  before(:each) {
    member = Member.first
    url = "api/members/#{member.id}/contributions_sectors"
    get url
  }
  after(:all) {
    ContributionsIndustry.destroy_all
    ContributionsSector.destroy_all
    Member.destroy_all
  }

  it "should respond with success" do
    last_response.status.should eq(200)
  end

  it "should respond with JSON" do
    last_response.header['Content-Type'].should match('json')
  end

  describe "Industry breakdown" do
    before(:all) {
      @member = Member.first
      @sector = @member.contributions_sectors.first
      FactoryGirl.create(:contributions_industry, contributions_sector: @sector)
    }
    it "should be included in the response" do
      sector_response = JSON.parse(last_response.body)[0]
      sector_response.should include("contributions_industries")
    end

    it "should include data specific to a member and sector" do
      industry = @sector.contributions_industries.first
      sector_response = JSON.parse(last_response.body)[0]
      industry_response = sector_response["contributions_industries"][0]

      expect(industry.id).to eq(industry_response["id"])
    end
  end
end