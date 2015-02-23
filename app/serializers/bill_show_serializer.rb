class BillShowSerializer < BillSerializer
  attributes :author,
             :coauthors

  has_many :bill_status_listings
  has_many :versions
  has_many :votes
  has_many :predictions_history

  def author
    object.author
  end

  def coauthors
    object.coauthors
  end
end
