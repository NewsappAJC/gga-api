require 'spec_helper'

describe Api::TopContributorsController, :type => :api do
  before(:all) { FactoryGirl.create(:top_contributor) }
  before(:each) {
    member = Member.first
    url = "api/members/#{member.id}/top_contributors"
    get url
  }
  after(:all) {
    TopContributor.destroy_all
    Member.destroy_all
  }

  it "should respond with success" do
    last_response.status.should eq(200)
  end

  it "should respond with JSON" do
    last_response.header['Content-Type'].should match('json')
  end
end