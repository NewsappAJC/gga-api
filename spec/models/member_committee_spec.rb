# == Schema Information
#
# Table name: member_committees
#
#  id           :integer          default(0), not null, primary key
#  member_id    :integer
#  committee_id :integer
#  role         :string(255)
#  name         :string(255)
#

require 'spec_helper'

describe MemberCommittee do
  before { @member_committee = MemberCommittee.new }
  subject { @member_committee }

  it { should respond_to(:member) }
  it { should respond_to(:committee) }
end
