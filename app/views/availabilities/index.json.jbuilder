json.array!(@availabilities) do |availability|
  json.extract! availability, :id, :name
  json.url availability_url(availability, format: :json)
end
