class District < ActiveRecord::Base
  self.primary_key = 'id'
  has_one :member
end
