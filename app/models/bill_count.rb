# == Schema Information
#
# Table name: bill_counts
#
#  id            :integer          default(0), not null, primary key
#  bills         :integer          default(0), not null
#  passed_house  :integer
#  passed_senate :integer
#  sent_to_gov   :integer
#  signed_by_gov :integer
#  vetoed        :integer
#

class BillCount < ActiveRecord::Base
  self.primary_key = 'id'
end
