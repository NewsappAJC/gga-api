class CommitteeMeeting < ActiveRecord::Base
  self.primary_key = 'id'

  scope :today, -> { where("ajc_date = '#{Date.today}'") }
  scope :tomorrow, -> { where("ajc_date = '#{Date.tomorrow}'") }
  scope :this_week, -> { where("ajc_date BETWEEN ? AND ?", Date.today.beginning_of_week, Date.today.end_of_week) }
  scope :next_week, -> { where("ajc_date BETWEEN ? AND ?", Date.today.next_week, Date.today.next_week.end_of_week) }
  default_scope { order(:ajc_date) }
end