class LegislativeDay < ActiveRecord::Base
  self.primary_key = 'id'

  scope :yesterday, -> { where("legislative_day_date < '#{Time.now.to_date}'").last }
  scope :previous, -> (id) { find( id > 1 ? id - 1 : 1 ) }
end
