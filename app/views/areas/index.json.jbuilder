json.array!(@areas) do |area|
  json.extract! area, :id, :name, :memo
  json.url area_url(area, format: :json)
end
