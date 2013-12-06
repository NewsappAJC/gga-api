# == Schema Information
#
# Table name: bill_status_listings
#
#  id                :integer          default(0), not null, primary key
#  status_id         :integer
#  status_listing_id :integer
#  status_date       :datetime
#  code              :string(10)
#  description       :string(255)
#  am_sub            :string(10)
#  bill_id           :integer
#

class BillStatusListing < ActiveRecord::Base
  self.primary_key = "id"
  belongs_to :bill
end
