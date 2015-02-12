class MemberVoteSerializer < ActiveModel::Serializer
  attributes :id,
             :member_id,
             :vote_id,
             :vote_date,
             :caption,
             :legislation,
             :voted,
             :bills

  def bills
    object.bills_votes
  end
end
