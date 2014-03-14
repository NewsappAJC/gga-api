# == Schema Information
#
# Table name: days_left
#
#  id        :integer          default(0), not null, primary key
#  days_left :integer
#

class DaysLeft < ActiveRecord::Base
  self.table_name = 'days_left'
  self.primary_key = 'id'
end
