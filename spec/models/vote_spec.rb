require 'spec_helper'

describe Vote do
  before { @vote = Vote.new }
  subject { @vote }

  it { should respond_to(:bill) }
end
