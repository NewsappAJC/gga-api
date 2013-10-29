# == Schema Information
#
# Table name: votes
#
#  id          :integer          not null
#  legislation :string(10)
#  bill_id     :integer
#  branch      :string(10)
#  session_id  :integer
#  caption     :string(255)
#  vote_date   :datetime
#  description :string(255)
#  number      :integer
#  not_voting  :integer
#  excused     :integer
#  nays        :integer
#  yeas        :integer
#

require 'spec_helper'

describe Vote do
  before { @vote = Vote.new }
  subject { @vote }

  it { should respond_to(:bill) }
end
