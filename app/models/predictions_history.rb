class PredictionsHistory < ActiveRecord::Base
  self.table_name = "predictions_history_display"
  self.primary_key = "id"
  belongs_to :bill
end
