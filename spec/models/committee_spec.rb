# == Schema Information
#
# Table name: committees
#
#  id             :integer          not null, primary key
#  code           :string(12)
#  name           :string(255)
#  description    :text(2147483647)
#  committee_type :string(10)
#  session_id     :integer
#

require 'spec_helper'

describe Committee do
  before { @vote = Vote.new }
  subject { @vote }

  it { should respond_to(:bill) }
end
