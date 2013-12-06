class CommitteeSerializer < ActiveModel::Serializer
  attributes :id, :id, :code, :name, :committee_type

  has_many :bills
  has_many :members
end
