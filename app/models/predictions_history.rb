class PredictionsHistory < ActiveRecord::Base
  self.table_name = "predictions_history"
  self.primary_key = "id"
  belongs_to :bill
end
