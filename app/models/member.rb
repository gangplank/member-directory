class Member < ActiveRecord::Base
  has_many :member_skills
  has_many :skills, through: :member_skills
  has_many :member_availabilies
  has_many :availabilities, through: :member_availabilies
end
