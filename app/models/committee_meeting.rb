class CommitteeMeeting < ActiveRecord::Base
  self.primary_key = 'id'

  scope :today, -> (date = Date.today.strftime("%Y-%m-%d")) { where("ajc_date = '#{date}'") }
  scope :tomorrow, -> { where("ajc_date = '#{Date.tomorrow}'") }
  scope :this_week, -> (date = Date.today.strftime("%Y-%m-%d")) { where("ajc_date BETWEEN ? AND ?", Date.parse(date).beginning_of_week, Date.parse(date).end_of_week) }
  scope :next_week, -> (date = Date.today.strftime("%Y-%m-%d")) { where("ajc_date BETWEEN ? AND ?", Date.parse(date).next_week, Date.parse(date).next_week.end_of_week) }
  default_scope { order(:ajc_date) }
end