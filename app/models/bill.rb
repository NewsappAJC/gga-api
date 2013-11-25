# == Schema Information
#
# Table name: bills
#
#  id                         :integer          not null, primary key
#  document_type              :string(3)
#  number                     :integer
#  session_id                 :integer
#  act_veto_number            :integer
#  caption                    :string(255)
#  latest_version_id          :integer
#  latest_version_description :string(255)
#  latest_version_url         :string(255)
#  legislation_type           :string(5)
#  status_id                  :integer
#  status_date                :datetime
#  status_description         :string(255)
#  suffix                     :string(255)
#  footnotes                  :text(2147483647)
#  member_id                  :integer
#  house_sponsor_id           :integer
#  senate_sponsor_id          :integer
#  summary                    :text(2147483647)
#

class Bill < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :sponsorships
  has_many :votes
  has_many :committees
  has_many :bill_status_listings
  belongs_to :member
  belongs_to :watched_bill

  scope :house, -> { where( "document_type in ('HB','HR')") }
  scope :senate, -> { where( "document_type in ('SB','SR')") }
  scope :by_type_number, -> (type, number) { where(document_type: type, number: number) }

  def author
    self.sponsorships.primary.first
  end

  def coauthors
    self.sponsorships.secondary
  end
end
