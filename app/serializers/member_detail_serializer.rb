class MemberDetailSerializer < MemberSerializer
  attributes :bills
  has_many :member_committees
  has_one  :district
  has_many :top_contributors
  has_many :member_votes

  def bills
    object.primary_sponsorships
  end
end
