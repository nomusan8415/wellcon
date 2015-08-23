json.array!(@tasks) do |task|
  json.extract! task, :id, :device_id, :name, :start_time, :stop_time, :comment
  json.url task_url(task, format: :json)
end
