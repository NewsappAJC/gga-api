class CountyMember < ActiveRecord::Base
  self.primary_key = "id"
  belongs_to :member
  belongs_to :county
  belongs_to :district
end