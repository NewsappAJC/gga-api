# == Schema Information
#
# Table name: watched_bills
#
#  id          :integer          not null, primary key
#  bill_id     :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class WatchedBill < ActiveRecord::Base
end
