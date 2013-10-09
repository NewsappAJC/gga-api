# == Schema Information
#
# Table name: bills
#
#  id                :integer          not null, primary key
#  document_type     :string(3)
#  number            :integer
#  session_id        :integer
#  act_veto_number   :integer
#  caption           :string(255)
#  latest_version_id :integer
#  legislation_type  :string(5)
#  status_id         :integer
#  status_date       :datetime
#  suffix            :string(255)
#  footnotes         :text(2147483647)
#  house_sponsor_id  :integer
#  senate_sponsor_id :integer
#  summary           :text(2147483647)
#

require 'spec_helper'

describe Bill do
  before { @bill = Bill.new }
  subject { @bill }

  it { should respond_to(:bill_status_listings) }
  it { should respond_to(:sponsorships) }
  it { should respond_to(:committees) }
  it { should respond_to(:votes) }
end
