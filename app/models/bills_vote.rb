class BillsVote < ActiveRecord::Base
  belongs_to :vote
  belongs_to :bill
end
