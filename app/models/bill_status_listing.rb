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

class BillStatusListing < ActiveRecord::Base
  self.primary_key = "id"
  belongs_to :bill
  default_scope { order("status_date desc") }
end
