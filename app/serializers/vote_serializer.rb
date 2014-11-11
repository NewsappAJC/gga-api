class VoteSerializer < ActiveModel::Serializer
  attributes :id,
             :vote_id,
             :legislation,
             :bill_id,
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
end
