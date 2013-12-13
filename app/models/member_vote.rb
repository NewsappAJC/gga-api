# == Schema Information
#
# Table name: member_votes
#
#  id              :integer          default(0), not null
#  member_id       :integer
#  vote_id         :integer
#  voted           :string(10)
#  vote_code       :integer
#  bill_id         :integer
#  caption         :string(255)
#  document_type   :string(3)
#  number          :integer
#  bill_title      :string(255)
#  name_first      :string(255)
#  name_last       :string(255)
#  name_middle     :string(255)
#  name_nickname   :string(255)
#  district_type   :string(8)
#  district_number :string(3)
#  party           :string(12)
#  title           :string(255)
#

class MemberVote < ActiveRecord::Base
  self.primary_key = "id"
  belongs_to :vote
  belongs_to :member
  belongs_to :bill
end
