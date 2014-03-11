# == Schema Information
#
# Table name: watched_bills
#
#  id                 :integer          not null, primary key
#  bill_id            :integer
#  description        :text
#  created_at         :datetime
#  updated_at         :datetime
#  document_type      :text
#  number             :integer
#  category           :string(255)
#  title              :string(255)
#  status_description :string(255)
#  status_date        :datetime
#  predictions        :float
#  bill_passed        :integer          default(0)
#  passed_over        :integer          default(0)
#

require 'spec_helper'

describe WatchedBill do
  before {@watched_bill = WatchedBill.new}
  subject {@watched_bill}

  it { should respond_to(:bill) }
end
