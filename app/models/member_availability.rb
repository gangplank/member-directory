class MemberAvailability < ActiveRecord::Base
  belongs_to :member
  belongs_to :availability
end
