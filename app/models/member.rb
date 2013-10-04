# == Schema Information
#
# Table name: members
#
#  id                      :integer          not null, primary key
#  name_first              :string(255)
#  name_last               :string(255)
#  name_middle             :string(255)
#  name_nickname           :string(255)      not null
#  district_type           :string(8)        not null
#  district_number         :string(3)        not null
#  party                   :string(12)       not null
#  title                   :string(255)      not null
#  birthday                :string(255)      not null
#  education               :string(255)      not null
#  occupation              :string(255)      not null
#  religion                :string(255)      not null
#  spouse                  :string(255)      not null
#  cellphone               :string(10)       not null
#  address_city            :string(255)
#  address_state           :string(2)
#  address_street          :string(255)
#  address_zip             :string(5)
#  address_phone           :string(10)
#  address_email           :string(255)
#  district_address_city   :string(255)
#  district_address_state  :string(2)
#  district_address_street :string(255)
#  district_address_zip    :string(5)
#  district_address_phone  :string(10)
#  district_address_email  :string(255)
#  imsp_candidate_id       :string(255)
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

  default_scope { order ("district_type, district_number") }

  scope :by_house, lambda { |house| where('district_type = ?', house) }
  scope :by_party, lambda { |party| where('party = ?', party) }
  scope :by_house_district, lambda { |house, district| where('district_type = ? and district_number = ?', house, district) }

  def full_name
    name = self.name_first
    name = name + ' "' + self.name_nickname + '"' if self.name_nickname != ''
    name = name + ' ' + self.name_middle if self.name_middle != ''
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
