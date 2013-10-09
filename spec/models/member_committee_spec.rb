require 'spec_helper'

describe MemberCommittee do
  before { @member_committee = MemberCommittee.new }
  subject { @member_committee }

  it { should respond_to(:member) }
  it { should respond_to(:committee) }
end
