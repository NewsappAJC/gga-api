class VoteSerializer < ActiveModel::Serializer
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
end
