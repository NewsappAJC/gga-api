# == Schema Information
#
# Table name: bills
#
#  id                :integer          not null
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

class Bill < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :sponsorships
end
