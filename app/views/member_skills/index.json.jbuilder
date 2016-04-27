json.array!(@member_skills) do |member_skill|
  json.extract! member_skill, :id, :skill_id, :member_id
  json.url member_skill_url(member_skill, format: :json)
end
