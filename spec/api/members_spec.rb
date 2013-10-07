require "spec_helper"

describe Api::MembersController, :type => :api do
  let!(:member) { FactoryGirl.create(:member_with_sponsorships) }
  let!(:base_url) { '/api/members' }
  before(:each) { get base_url }

  it "should successfuly respond to request" do
    last_response.status.should eq(200)
  end

  it "should respond with JSON" do
    last_response.header['Content-Type'].should match('json')
  end

  it "should include correct full_name attribute" do
    member_response = JSON.parse(last_response.body)[0]
    expect(member.full_name).to eq(member_response['full_name'])
  end

  context "sponsored bills" do
    it "should be included in response" do
      member_response = JSON.parse(last_response.body)[0]
      expect(member.primary_sponsorships.count).to eq(member_response['primary_sponsorships_bills'].length)
      expect(member.secondary_sponsorships.count).to eq(member_response['secondary_sponsorships_bills'].length)
    end
  end
end