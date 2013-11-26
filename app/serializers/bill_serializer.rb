class BillSerializer < ActiveModel::Serializer
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
             :author,
             :coauthors

  has_many :bill_status_listings
  has_many :versions

  def author
    object.author
  end

  def coauthors
    object.coauthors
  end

  # def status
  #     object.bill_status_listings
  # end
end
