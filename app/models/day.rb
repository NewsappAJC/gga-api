class Day < ActiveRecord::Base
  self.primary_key = 'id'

  scope :yesterday, -> { where("legislative_day_date < '#{Time.now.to_date}'").last }
  scope :recent, -> (day = Date.today) { where("legislative_day_date <= '#{day}'").last }

  def previous (num = 1)
    Day.find(self.id > num ? self.id - num : 1)
  end
end
