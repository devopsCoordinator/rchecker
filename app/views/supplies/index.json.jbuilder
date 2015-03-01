json.array!(@supplies) do |supply|
  json.extract! supply, :id, :uuid, :start_date, :end_date, :elapsed_time
  json.url supply_url(supply, format: :json)
end
