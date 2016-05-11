class CreateMemberAvailabilities < ActiveRecord::Migration
  def change
    create_table :member_availabilities do |t|
      t.references :member, index: true, foreign_key: true
      t.references :availability, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
