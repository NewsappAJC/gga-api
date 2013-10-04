require 'spec_helper'

describe Sponsorship do
  before { @sponsorship = Sponsorship.new }
  subject { @sponsorship }

  it { should respond_to(:member) }
  it { should respond_to(:bill) }
end