# == Schema Information
#
# Table name: members
#
#  district_vacated        :date
#  district_coverage       :string(255)
#  district_post           :string(255)
#  district_id             :integer
#  district_type           :string(10)
#  district_number         :integer
#  address_city            :string(255)
#  address_email           :string(255)
#  address_fax             :string(10)
#  address_phone           :string(10)
#  address_state           :string(2)
#  address_street          :string(255)
#  address_zip             :string(5)
#  district_address_city   :string(255)
#  district_address_email  :string(255)
#  district_address_fax    :string(10)
#  district_address_phone  :string(10)
#  district_address_state  :string(2)
#  district_address_street :string(255)
#  district_address_zip    :string(5)
#  leg_id                  :integer
#  name_first              :string(255)
#  name_last               :string(255)
#  name_middle             :string(255)
#  party                   :string(255)
#  birthday                :string(255)      not null
#  education               :string(255)      not null
#  occupation              :string(255)      not null
#  religion                :string(255)      not null
#  spouse                  :string(255)      not null
#  cellphone               :string(10)       not null
#  freeform1               :text(16777215)   default(""), not null
#  freeform2               :text(16777215)   default(""), not null
#  legislative_comments    :text(16777215)   default(""), not null
#  staff                   :text(16777215)   default(""), not null
#  id                      :integer          not null, primary key
#  homephone               :string(10)       not null
#

class Member < ActiveRecord::Base
  set_table_name "current_members"
  set_primary_key "id"
  has_many :member_sessions
  has_many :sessions, through: :member_sessions

  scope :by_house, lambda { |house| where('district_type = ?', house) }
  scope :by_party, lambda { |party| where('party = ?', party) }
  scope :by_house_district, lambda { |house, district| where('district_type = ? and district_number = ?', house, district) }
end
