# == Schema Information
#
# Table name: member_votes
#
#  id              :integer          default(0), not null, primary key
#  member_id       :integer          not null
#  vote_id         :integer          not null
#  voted           :string(10)
#  vote_code       :integer
#  vote_date       :datetime
#  caption         :string(255)
#  bill_id         :integer
#  bill_caption    :string(255)
#  document_type   :string(3)
#  number          :integer
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
  default_scope { order("vote_date desc") }

  def bills_votes
    self.vote.bills_votes
  end
end
