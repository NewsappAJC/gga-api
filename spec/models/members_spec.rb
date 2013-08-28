require 'spec_helper'

describe Member do
  before { @member = FactoryGirl.build(:member) }
  subject { @member }
  it { should respond_to(:top_contributors) }
  it { should respond_to(:sessions) }
  it { should respond_to(:full_name) }
  it { should respond_to(:contributions_sectors) }
  it { should respond_to(:contributions_industries) }

  describe "should have proper full name" do
    it "with first, last, middle and nickname" do
      name = @member.name_first + ' "' + @member.name_nickname + '" ' + @member.name_middle + ' ' + @member.name_last
      expect(@member.full_name).to eq(name)
    end

    it "with first, middle and last name" do
      member = FactoryGirl.build(:member, name_nickname: '')
      name = member.name_first + ' ' + member.name_middle + ' ' + member.name_last
      expect(member.full_name).to eq(name)
    end

    it "with first, last and nickname" do
      member = FactoryGirl.build(:member, name_middle: '')
      name = member.name_first + ' "' + member.name_nickname + '" ' + member.name_last
      expect(member.full_name).to eq(name)
    end

    it "with first last name" do
      member = FactoryGirl.build(:member, name_middle: '', name_nickname: '')
      name = member.name_first + ' ' + member.name_last
      expect(member.full_name).to eq(name)
    end
  end

  describe "scopes" do
    context "by_party" do
      it "should include only members of the given party" do
        republican = FactoryGirl.create(:member, id: 1, party: 'Republican')
        democrat = FactoryGirl.create(:member, id: 2, party: 'Democrat')

        Member.by_party('Republican').should include(republican)
      end

      it "should not include members of other parties" do
        republican = FactoryGirl.create(:member, id: 1, party: 'Republican')
        democrat = FactoryGirl.create(:member, id: 2, party: 'Democrat')

        Member.by_party('Republican').should_not include(democrat)
      end
    end

    context "by_house" do
      it "should include only members of the given chamber" do
        representative = FactoryGirl.create(:member, id: 1, district_type: 'House')
        senator = FactoryGirl.create(:member, id: 2, district_type: 'Senate')

        Member.by_house('House').should include(representative)
      end

      it "should not include members of the other chamber" do
        representative = FactoryGirl.create(:member, id: 1, district_type: 'House')
        senator = FactoryGirl.create(:member, id: 2, district_type: 'Senate')

        Member.by_house('House').should_not include(senator)
      end
    end

    context "by_house_district" do
      it "should include members of the given chamber and district" do
        member1 = FactoryGirl.create(:member, id: 1, district_type: 'House', district_number: 1)
        member2 = FactoryGirl.create(:member, id: 2, district_type: 'Senate', district_number: 2)

        Member.by_house_district('House', 1).should include(member1)
      end

      it "should not include members of the other chamber" do
        member1 = FactoryGirl.create(:member, id: 1, district_type: 'House', district_number: 1)
        member2 = FactoryGirl.create(:member, id: 2, district_type: 'Senate', district_number: 1)

        Member.by_house_district('House', 1).should_not include(member2)
      end

      it "should not include members of another district" do
        member1 = FactoryGirl.create(:member, id: 1, district_type: 'House', district_number: 1)
        member2 = FactoryGirl.create(:member, id: 2, district_type: 'House', district_number: 2)

        Member.by_house_district('House', 1).should_not include(member2)
      end
    end
  end
end
