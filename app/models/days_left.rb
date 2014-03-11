# == Schema Information
#
# Table name: days_left
#
#  days_left :integer
#

class DaysLeft < ActiveRecord::Base
  self.table_name = 'days_left'
  self.primary_key = 'id'
end
