class MemberDetailSerializer < MemberSerializer
  attributes :bills
  has_many :member_committees
  has_many :top_contributors

  def bills
    object.primary_sponsorships
  end
end
