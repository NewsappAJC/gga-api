class ContributionsSectorSerializer < ActiveModel::Serializer
  attributes :id, :member_id, :imsp_sector_code,
             :sector_name, :total_contribution_records,
             :total_dollars
  has_many :contributions_industries
end