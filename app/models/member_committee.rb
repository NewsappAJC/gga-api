class MemberCommittee < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :member
  belongs_to :committee

  def active_model_serilaizer
    MemberCommitteeSerializer
  end
end
