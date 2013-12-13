class VoteDetailSerializer < ActiveModel::Serializer
  attributes :id, :legislation, :bill_id, :branch,
             :session_id, :caption, :vote_date,
             :description, :number, :not_voting,
             :excused, :nays, :yeas
  has_one :bill
  has_many :member_votes
end
