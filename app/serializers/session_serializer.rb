class SessionSerializer < ActiveModel::Serializer
  attributes :id, :is_default, :description
end
