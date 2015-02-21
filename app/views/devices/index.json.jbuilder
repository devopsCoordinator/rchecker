json.array!(@devices) do |device|
  json.extract! device, :id, :uuid, :model, :department, :location, :memo
  json.url device_url(device, format: :json)
end
