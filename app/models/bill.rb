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
#  house_sponsor_id           :integer
#  senate_sponsor_id          :integer
#  member_id                  :integer
#  summary                    :text(2147483647)
#  bill_passed                :integer          default(0)
#  predictions                :float
#  passed_over                :integer          default(0)
#

class Bill < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :sponsorships
  has_many :bills_votes
  has_many :votes, through: :bills_votes
  has_many :member_votes
  has_many :committees
  has_many :bill_status_listings
  has_many :versions
  has_many :predictions_history
  belongs_to :member
  belongs_to :watched_bill

  scope :house, -> { where( "document_type in ('HB','HR')") }
  scope :senate, -> { where( "document_type in ('SB','SR')") }
  scope :bills, -> { where( "document_type in ('HB','SB')") }
  scope :resolutions, -> { where( "document_type in ('HR','SR')") }
  scope :by_type_number, -> (type, number) { where(document_type: type, number: number) }

  def author
    self.sponsorships.primary.first
  end

  def coauthors
    self.sponsorships.secondary
  end

  def self.passed_house
    BillStatusListing.where("status_id = 100 and document_type in ('HB','SB')").to_a.map { |s| s.bill }
  end

  def self.passed_senate
    BillStatusListing.where("status_id = 99 and document_type in ('HB','SB')").to_a.map { |s| s.bill }
  end

  def self.sent_to_governor
    BillStatusListing.where("status_id in(108,109) and document_type in ('HB','SB')").to_a.map { |s| s.bill }
  end

  def self.signed
    BillStatusListing.where("status_id = -1").to_a.map { |s| s.bill }
  end

  def self.vetoed
    BillStatusListing.where("status_id = -1 and description like 'V%'").to_a.map { |s| s.bill }
  end

  def active_model_serializer
    BillSerializer
  end
end
