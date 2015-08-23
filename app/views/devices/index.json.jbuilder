json.array!(@devices) do |device|
  json.extract! device, :id, :name, :state, :comment, :polling_time
  json.url device_url(device, format: :json)
end
