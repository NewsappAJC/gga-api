# == Schema Information
#
# Table name: sessions
#
#  is_default  :string(10)       not null
#  id          :integer          not null, primary key
#  description :string(255)      not null
#  library     :string(255)      not null
#

require 'test_helper'

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
