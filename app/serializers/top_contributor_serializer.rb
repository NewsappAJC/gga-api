class TopContributorSerializer < ActiveModel::Serializer
  attributes :member_id,
             :imsp_candidate_id,
             :contribution_ranking,
             :contributor_name,
             :business_name,
             :total_contribution_records,
             :total_dollars,
             :percent_of_total_contribution_records,
             :percent_of_total_total_dollars
end
