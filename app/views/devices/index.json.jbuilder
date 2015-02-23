json.array!(@devices) do |device|
  json.extract! device, :id, :uuid, :model, :memo
  json.url device_url(device, format: :json)
end
