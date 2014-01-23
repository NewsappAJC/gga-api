class BillSerializer < ActiveModel::Serializer
  attributes :id,
             :document_type,
             :number,
             :caption,
             :latest_version_description,
             :latest_version_url,
             :legislation_type,
             :status_date,
             :status_description,
             :suffix,
             :footnotes,
             :house_sponsor_id,
             :senate_sponsor_id,
             :summary,
             :predictions
end
