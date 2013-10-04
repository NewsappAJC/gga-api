class BillSerializer < ActiveModel::Serializer
  attributes :id,
             :document_type,
             :number,
             :session_id,
             :act_veto_number,
             :caption,
             :latest_version_id,
             :legislation_type,
             :status_id,
             :status_date,
             :suffix,
             :footnotes,
             :house_sponsor_id,
             :senate_sponsor_id,
             :summary
end
