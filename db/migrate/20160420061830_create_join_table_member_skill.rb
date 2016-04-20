class CreateJoinTableMemberSkill < ActiveRecord::Migration
  def change
    create_join_table :members, :skills do |t|
      # t.index [:member_id, :skill_id]
      # t.index [:skill_id, :member_id]
    end
  end
end
