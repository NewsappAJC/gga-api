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

class WatchedBill < ActiveRecord::Base
  belongs_to :bill
  scope :by_category, -> (category) { where(category: category) }

  def self.categories
    self.select(:category).distinct.map {|c| c.category}
  end
end
