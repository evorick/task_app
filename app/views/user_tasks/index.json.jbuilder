json.array!(@user_tasks) do |user_task|
  json.extract! user_task, :id, :description, :due
  json.url user_task_url(user_task, format: :json)
end
