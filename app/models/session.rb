# == Schema Information
#
# Table name: sessions
#
#  is_default  :string(10)       not null
#  id          :integer          not null
#  description :string(255)      not null
#  library     :string(255)      not null
#

class Session < ActiveRecord::Base
  has_many :member_sessions
  has_many :members, through: :member_sessions
end
