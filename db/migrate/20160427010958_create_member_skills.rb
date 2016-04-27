class CreateMemberSkills < ActiveRecord::Migration
  def change
    create_table :member_skills do |t|
      t.references :skill, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
