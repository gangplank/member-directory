class Availability < ActiveRecord::Base
  has_many :member_availabilities
  has_many :members, through: :member_availabilities
end
