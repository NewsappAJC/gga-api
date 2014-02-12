# == Schema Information
#
# Table name: committees
#
#  id             :integer          not null, primary key
#  code           :string(12)
#  name           :string(255)
#  description    :text(2147483647)
#  committee_type :string(10)
#  session_id     :integer
#

class Committee < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :member_committees
  has_many :members, through: :member_committees

  def active_model_serializer
    CommitteeSerializer
  end
end
