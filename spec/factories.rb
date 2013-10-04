FactoryGirl.define do
  sequence :id do |n|
    n
  end

  factory :member do
    id
    name_first 'Joe'
    name_middle 'C'
    name_last 'Smith'
    name_nickname 'Bubba'
    district_type 'House'
    district_number 1
    party 'Republican'

    factory :member_with_sponsorships do
      ignore do
        sponsorship_count 2
      end
      after(:create) do |member, evaluator|
        FactoryGirl.create_list(:sponsorship, evaluator.sponsorship_count, member: member, sequence: 1)
        FactoryGirl.create_list(:sponsorship, evaluator.sponsorship_count, member: member, sequence: 2)
      end
    end
  end

  factory :top_contributor do
    id
    imsp_candidate_id 1
    contributor_name "Big Shot"
    business_name "organized crime"
    contribution_ranking 1
    total_contribution_records 1
    total_dollars 1000000
    percent_of_total_contribution_records "100%"
    percent_of_total_total_dollars "100%"
    member
  end

  factory :contributions_sector do
    id
    imsp_candidate_id 1
    sector_name "Health"
    imsp_sector_code 8
    total_contribution_records 1
    total_dollars 2500
    member
  end

  factory :contributions_industry do
    id
    imsp_candidate_id 1
    imsp_industry_code 45
    industry_name "Commercial Banking"
    imsp_sector_code 6
    sector_name "Finance, Insurance & Real Estate"
    total_contribution_records 3
    total_dollars 1000
    member
    contributions_sector
  end

  factory :bill do
    id
  end

  factory :sponsorship do
    id
    bill
    member
  end
end