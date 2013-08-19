require 'spec_helper'

describe TopContributor do
  before { @top_contributor = TopContributor.new }
  subject { @top_contributor }

  it { should respond_to(:member) }
end