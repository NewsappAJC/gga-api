# == Schema Information
#
# Table name: contributions_industries
#
#  id                         :integer          not null, primary key
#  imsp_candidate_id          :integer          not null
#  member_id                  :integer          not null
#  imsp_industry_code         :string(255)      not null
#  industry_name              :string(255)      not null
#  imsp_sector_code           :string(255)      not null
#  sector_name                :string(255)      not null
#  total_contribution_records :integer          not null
#  total_dollars              :integer          not null
#

class ContributionsIndustry < ActiveRecord::Base
  belongs_to :contributions_sector
  belongs_to :members
end
