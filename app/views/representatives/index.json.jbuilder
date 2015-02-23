json.array!(@representatives) do |representative|
  json.extract! representative, :id, :name, :email, :mobile, :area_id
  json.url representative_url(representative, format: :json)
end
