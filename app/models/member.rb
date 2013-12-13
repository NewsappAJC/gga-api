# == Schema Information
#
# Table name: members
#
#  id                      :integer          not null, primary key
#  name_first              :string(255)
#  name_last               :string(255)
#  name_middle             :string(255)
#  name_nickname           :string(255)
#  district_type           :string(8)
#  district_number         :string(3)
#  party                   :string(12)
#  title                   :string(255)
#  birthday                :string(255)
#  education               :string(255)
#  occupation              :string(255)
#  religion                :string(255)
#  spouse                  :string(255)
#  cellphone               :string(10)
#  address_city            :string(255)
#  address_state           :string(2)
#  address_street          :string(255)
#  address_zip             :string(10)
#  address_phone           :string(10)
#  address_email           :string(255)
#  address_fax             :string(10)
#  district_address_city   :string(255)
#  district_address_state  :string(2)
#  district_address_street :string(255)
#  district_address_zip    :string(10)
#  district_address_phone  :string(10)
#  district_address_email  :string(255)
#  district_address_fax    :string(10)
#  imsp_candidate_id       :string(255)
#  edited                  :integer          default(0), not null
#  edit_date               :date
#

class Member < ActiveRecord::Base
  # self.table_name = "current_members"
  self.primary_key = 'id'
  has_many :member_sessions
  has_many :sessions, through: :member_sessions
  has_many :top_contributors
  has_many :contributions_sectors
  has_many :contributions_industries
  has_many :sponsorships
  has_many :bills
  has_many :member_committees
  has_many :member_votes
  has_many :committees, through: :member_committees

  default_scope { order ("district_type, district_number") }

  scope :by_house, lambda { |house| where('district_type = ?', house) }
  scope :by_party, lambda { |party| where('party = ?', party) }
  scope :by_house_district, lambda { |house, district| where('district_type = ? and district_number = ?', house, district) }

  def full_name
    name = self.name_first
    name = name + ' "' + self.name_nickname + '"' unless self.name_nickname.blank?
    name = name + ' ' + self.name_middle unless self.name_middle.blank?
    name = name + ' ' + self.name_last
  end

  def primary_sponsorships
    self.sponsorships.primary
  end

  def primary_sponsorships_bills
    self.sponsorships.primary.to_a.map { |s| s.bill }
  end

  def secondary_sponsorships
    self.sponsorships.secondary
  end

  def secondary_sponsorships_bills
    self.sponsorships.secondary.to_a.map { |s| s.bill }
  end

  def active_model_serilaizer
    MemberSerializer
  end
end
