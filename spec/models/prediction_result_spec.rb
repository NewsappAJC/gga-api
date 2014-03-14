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

require 'spec_helper'

describe PredictionResult do
  pending "add some examples to (or delete) #{__FILE__}"
end
