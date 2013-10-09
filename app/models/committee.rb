# == Schema Information
#
# Table name: committees
#
#  id             :integer          not null, primary key
#  code           :string(10)
#  name           :string(255)
#  committee_type :string(10)
#

class Committee < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :member_committees
  has_many :members, through: :member_committees

  def active_model_serializer
    CommitteeSerializer
  end
end
