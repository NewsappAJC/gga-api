class BillShowSerializer < ActiveModel::Serializer
  attributes :id,
             :document_type,
             :number,
             :session_id,
             :act_veto_number,
             :caption,
             :latest_version_id,
             :latest_version_description,
             :latest_version_url,
             :legislation_type,
             :status_id,
             :status_date,
             :status_description,
             :suffix,
             :footnotes,
             :house_sponsor_id,
             :senate_sponsor_id,
             :summary,
             :bill_passed,
             :predictions,
             :passed_over,
             :author,
             :coauthors

  has_many :bill_status_listings
  has_many :versions
  has_many :votes

  def author
    object.author
  end

  def coauthors
    object.coauthors
  end
end
