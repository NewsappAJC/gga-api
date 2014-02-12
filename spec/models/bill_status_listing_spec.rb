# == Schema Information
#
# Table name: bill_status_listings
#
#  id                :integer          not null, primary key
#  status_id         :integer
#  status_listing_id :integer
#  status_date       :datetime
#  code              :string(10)
#  description       :string(255)
#  am_sub            :string(50)
#  bill_id           :integer
#  document_type     :string(10)
#  number            :integer
#  caption           :string(255)
#

require 'spec_helper'

describe BillStatusListing do
  before(:each) { @bill_status_listing = BillStatusListing.new }
  subject { @bill_status_listing }

  it { should respond_to("bill") }
end
