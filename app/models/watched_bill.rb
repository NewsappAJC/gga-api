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
#  bill_passed        :boolean          default(FALSE)
#

class WatchedBill < ActiveRecord::Base
  # self.table_name = "watched_bills_supplemented"
  belongs_to :bill
  scope :by_category, -> (category) { where(category: category) }

  def self.categories
    self.select(:category).distinct.map {|c| c.category}
  end
end
