json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :started_on, :completed_on, :estimated_completion, :estimated_hours, :actual_hours, :user_id, :client_id
  json.url project_url(project, format: :json)
end
