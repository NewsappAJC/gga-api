# == Schema Information
#
# Table name: prediction_results
#
#  id                  :integer          not null, primary key
#  bill_number         :string(15)
#  caption             :string(255)
#  original_prediction :float(17)
#  revised_prediction  :float(17)
#  latest_status       :string(255)
#  bill_passed         :integer          default(0)
#

class PredictionResult < ActiveRecord::Base
  self.primary_key = 'id'
  default_scope { order ("document_type, number")}
end
