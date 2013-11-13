# == Schema Information
#
# Table name: watched_bills
#
#  id            :integer          not null, primary key
#  bill_id       :integer
#  description   :text
#  created_at    :datetime
#  updated_at    :datetime
#  document_type :text
#  number        :integer
#

require 'spec_helper'

describe WatchedBill do
  before {@watched_bill = WhatchedBill.new}
  subject {@watched_bill}

  it { should respond_to(:bill) }
end
