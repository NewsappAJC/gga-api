class MemberSession < ActiveRecord::Base
  belongs_to :member
  belongs_to :session
end
