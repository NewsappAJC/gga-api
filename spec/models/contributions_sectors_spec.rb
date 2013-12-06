require 'spec_helper'

describe ContributionsSector do
  before { @sector = ContributionsSector.new }
  subject { @sector }

  it { should respond_to(:member) }
  it { should respond_to(:contributions_industries) }
end
