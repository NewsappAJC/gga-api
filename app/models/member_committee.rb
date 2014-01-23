# == Schema Information
#
# Table name: member_committees
#
#  id           :integer          default(0), not null, primary key
#  member_id    :integer
#  committee_id :integer
#  name         :string(255)      not null
#  role         :string(255)
#

class MemberCommittee < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :member
  belongs_to :committee

  def active_model_serilaizer
    MemberCommitteeSerializer
  end
end
