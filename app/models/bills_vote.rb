class BillsVote < ActiveRecord::Base
  self.primary_key = "id"
  belongs_to :vote
  belongs_to :bill
end
