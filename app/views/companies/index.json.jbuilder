json.array!(@companies) do |company|
  json.extract! company, :id, :name, :area_id, :representative_id, :memo
  json.url company_url(company, format: :json)
end
