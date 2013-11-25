# == Schema Information
#
# Table name: bill_counts
#
#  id            :integer          default(0), not null, primary key
#  bills         :integer          default(0), not null
#  passed_house  :integer
#  passed_senate :integer
#  sent_to_gov   :integer
#  signed_by_gov :integer
#

require 'spec_helper'

describe BillCount do
  pending "add some examples to (or delete) #{__FILE__}"
end
