# == Schema Information
#
# Table name: sponsorships
#
#  id                 :integer          not null, primary key
#  member_id          :integer
#  bill_id            :integer
#  sequence           :integer
#  sponsorship_type   :string(255)
#  name_first         :string(255)
#  name_last          :string(255)
#  name_middle        :string(255)
#  name_nickname      :string(255)
#  party              :string(1)
#  title              :string(255)
#  district_type      :string(8)
#  district_number    :string(3)
#  hometown           :string(255)
#  document_type      :string(3)
#  number             :integer
#  status_description :string(255)
#  status_date        :datetime
#  caption            :string(255)
#  summary            :text(2147483647)
#  bill_passed        :integer          default(0)
#  predictions        :float
#  passed_over        :integer          default(0)
#

require 'spec_helper'

describe Sponsorship do
  before { @sponsorship = Sponsorship.new }
  subject { @sponsorship }

  it { should respond_to(:member) }
  it { should respond_to(:bill) }
end
