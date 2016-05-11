json.array!(@member_availabilities) do |member_availability|
  json.extract! member_availability, :id, :member_id, :availability_id
  json.url member_availability_url(member_availability, format: :json)
end
