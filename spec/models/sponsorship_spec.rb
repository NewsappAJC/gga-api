# == Schema Information
#
# Table name: sponsorships
#
#  id                 :integer          not null, primary key
#  member_description :string(255)
#  member_id          :integer
#  bill_id            :integer
#  sequence           :integer
#  sponsorship_type   :string(255)
#

require 'spec_helper'

describe Sponsorship do
  before { @sponsorship = Sponsorship.new }
  subject { @sponsorship }

  it { should respond_to(:member) }
  it { should respond_to(:bill) }
end
