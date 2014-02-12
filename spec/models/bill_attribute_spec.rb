# == Schema Information
#
# Table name: bill_attributes
#
#  id                                   :integer          not null
#  session_id                           :integer
#  document_type                        :string(3)
#  number                               :integer
#  summary_homestead                    :string(1)        default(""), not null
#  summary_amend_act                    :string(1)        default(""), not null
#  summary_amend_title                  :string(1)        default(""), not null
#  summary_amend_chapter                :string(1)        default(""), not null
#  summary_amend_article                :string(1)        default(""), not null
#  summary_amend_code                   :string(1)        default(""), not null
#  summary_amend_part                   :string(1)        default(""), not null
#  summary_amend_any                    :string(1)        default(""), not null
#  summary_new_charter                  :integer          default(0), not null
#  summary_to_authorize                 :integer          default(0), not null
#  summary_tax                          :integer          default(0), not null
#  summary_county                       :integer          default(0), not null
#  summary_county_names                 :integer          default(0), not null
#  summary_city                         :integer          default(0), not null
#  summary_city_of                      :integer          default(0), not null
#  summary_regulate                     :integer          default(0), not null
#  summary_office                       :integer          default(0), not null
#  summary_election                     :integer          default(0), not null
#  summary_health                       :integer          default(0), not null
#  summary_social                       :integer          default(0), not null
#  passed                               :integer          default(0), not null
#  out_committee                        :integer          default(0), not null
#  max_action_date                      :datetime
#  min_action_date                      :datetime
#  author_party                         :integer
#  majority_party                       :integer
#  majority_party_house                 :integer
#  majority_party_senate                :integer
#  gov_party                            :integer
#  chamber_leader_sponsor               :integer
#  chamber_leader_author                :integer
#  leadership_author_republican         :integer
#  leadership_sponsors_republican       :integer
#  leadership_author_democrat           :integer
#  leadership_sponsors_democrat         :integer
#  other_sponsors_democrat              :integer
#  other_sponsors_republican            :integer
#  other_minority_sponsors              :integer
#  other_majority_sponsors              :integer
#  floor_leader_author                  :integer
#  floor_leader_sponsors                :integer
#  other_leadership_sponsors_republican :integer
#  other_leadership_sponsors_democrat   :integer
#  other_majority_leadership_sponsors   :integer
#  other_minority_leadership_sponsors   :integer
#  majority_leadership_author           :integer
#  majority_leadership_sponsors         :integer
#  minority_leadership_author           :integer
#  minority_leadership_sponsors         :integer
#  majority_sponsors                    :integer
#  minority_sponsors                    :integer
#  sponsors                             :integer
#  sponsors_republican                  :integer
#  sponsors_democrat                    :integer
#  sponsors_house                       :integer
#  sponsors_senate                      :integer
#  author_independent                   :integer
#  sponsors_independent                 :integer
#  majority_party_author                :integer
#  gov_election_year                    :integer
#  leg_election_year                    :integer
#  days_from_may_submitted              :integer
#  days_from_may_out_committee          :integer
#  gov_reelection_year                  :integer
#  leg_year_submitted                   :integer
#  majority_edge_percent_house          :float
#  majority_edge_percent_senate         :float
#  majority_edge_house                  :integer
#  majority_edge_senate                 :integer
#  majority_edge                        :integer
#  majority_edge_percent                :integer
#  majority_members_house               :integer
#  majority_members_senate              :integer
#  minority_members_house               :integer
#  minority_members_senate              :integer
#  out_committee_date                   :date
#  single_party_rule                    :integer
#  bi_partisan_sponsorship              :integer
#  movement_second_year                 :integer
#  house_date_passed                    :date
#  senate_date_passed                   :date
#  rules_chair_author                   :integer
#  rules_chair_sponsor                  :integer
#  minority_leader_sponsor              :integer
#  minority_leader_author               :integer
#  democrat_chairman_sponsors           :integer
#  republican_chairman_sponsors         :integer
#  independent_chairman_sponsors        :integer
#  majority_chairman_sponsors           :integer
#  minority_chairman_sponsors           :integer
#  democrat_chairman_author             :integer
#  republican_chairman_author           :integer
#  independent_chairman_author          :integer
#  majority_chairman_author             :integer
#  minority_chairman_author             :integer
#

require 'spec_helper'

describe BillAttribute do
  pending "add some examples to (or delete) #{__FILE__}"
end
