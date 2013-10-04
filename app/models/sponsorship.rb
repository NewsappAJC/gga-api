# == Schema Information
#
# Table name: sponsorships
#
#  id                 :integer          not null, primary key
#  member_description :string(255)
#  member_id          :integer
#  bill_id            :integer
#  sequence           :integer
#  sponsorship_type   :string(255)
#

class Sponsorship < ActiveRecord::Base
  belongs_to :bill
  belongs_to :member

  scope :primary, -> { where(sequence: 1) }
  scope :secondary, -> { where('sequence > 1') }
end
