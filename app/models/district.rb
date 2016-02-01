class District < ActiveRecord::Base
  self.primary_key = 'id'
  has_one :member
  has_many :counties
end
