# == Schema Information
#
# Table name: votes
#
#  id          :integer          not null, primary key
#  legislation :string(10)
#  bill_id     :integer
#  title       :string(255)
#  branch      :string(10)
#  session_id  :integer
#  caption     :string(255)
#  vote_date   :datetime
#  description :string(255)
#  number      :integer
#  not_voting  :integer
#  excused     :integer
#  nays        :integer
#  yeas        :integer
#

class Vote < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :bills_votes
  has_many :bills, through: :bills_votes
  has_many :member_votes

  scope :on_date, -> (date) { where("date(vote_date) = '#{date}'") }

  def bills_minimal
    self.bills.select(:id, :document_type, :number)
  end
end
