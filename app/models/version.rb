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

class Version < ActiveRecord::Base
  self.primary_key = "id"
  belongs_to :bill
end
