# == Schema Information
#
# Table name: member_sessions
#
#  member_id  :integer          not null
#  session_id :integer          not null
#

class MemberSession < ActiveRecord::Base
  belongs_to :member
  belongs_to :session
end
