class MemberVoteSerializer < ActiveModel::Serializer
  attributes :id,
             :member_id,
             :vote_id,
             :vote_date,
             :caption,
             :legislation,
             :voted
end
