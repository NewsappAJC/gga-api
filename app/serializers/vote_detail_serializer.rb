class VoteDetailSerializer < VoteSerializer
  has_many :member_votes
end
