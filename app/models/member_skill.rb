class MemberSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :member
end
