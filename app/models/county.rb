class County < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :county_members
  has_many :members, through: :county_members
  has_many :districts, through: :county_members

  scope :by_name, lambda { |county| where("cntyName = ?", county) }
end