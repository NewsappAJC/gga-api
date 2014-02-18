class WatchedBillsSerializer < ActiveModel::Serializer
  attributes :id,
             :bill_id,
             :description,
             :created_at,
             :updated_at,
             :document_type,
             :number,
             :category,
             :title,
             :status_description
             :status_date,
             :predictions
end
