FactoryGirl.define do
  factory :member do
    id 1
    name_first 'Joe'
    name_middle 'C'
    name_last 'Smith'
    name_nickname 'Bubba'
    district_type 'House'
    district_number 1
    party 'Republican'
  end

  factory :top_contributor do
      id 1
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
end