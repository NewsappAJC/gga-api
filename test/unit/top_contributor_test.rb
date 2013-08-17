# == Schema Information
#
# Table name: top_contributors
#
#  id                                    :integer          not null, primary key
#  imsp_candidate_id                     :integer          not null
#  contributor_name                      :string(255)      not null
#  business_name                         :string(255)      not null
#  contribution_ranking                  :integer          not null
#  total_contribution_records            :integer          not null
#  total_dollars                         :integer          not null
#  percent_of_total_contribution_records :decimal(6, 1)    not null
#  percent_of_total_total_dollars        :decimal(6, 1)    not null
#

require 'test_helper'

class TopContributorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
