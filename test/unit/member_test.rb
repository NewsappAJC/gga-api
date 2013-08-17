# == Schema Information
#
# Table name: current_members
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

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
