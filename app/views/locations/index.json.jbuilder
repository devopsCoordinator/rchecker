json.array!(@locations) do |location|
  json.extract! location, :id, :company_id, :device_id, :department, :place
  json.url location_url(location, format: :json)
end
