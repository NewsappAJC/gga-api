class VoteDetailSerializer < ActiveModel::Serializer
  attributes :id,
             :legislation,
             :branch,
             :session_id,
             :caption,
             :vote_date,
             :description,
             :number,
             :not_voting,
             :excused,
             :nays,
             :yeas
  has_many :bills
  has_many :member_votes
end
