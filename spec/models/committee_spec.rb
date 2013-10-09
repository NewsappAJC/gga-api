# == Schema Information
#
# Table name: committees
#
#  id             :integer          not null, primary key
#  code           :string(10)
#  name           :string(255)
#  committee_type :string(10)
#

require 'spec_helper'

describe Committee do
  before { @vote = Vote.new }
  subject { @vote }

  it { should respond_to(:bill) }
end
