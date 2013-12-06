# == Schema Information
#
# Table name: versions
#
#  id          :integer          not null
#  bill_id     :integer
#  version     :integer
#  description :string(255)
#  url         :string(255)
#

require 'spec_helper'

describe Version do
  before { @version = Version.new }
  subject { @version }

  it { should respond_to(:bill) }
end
