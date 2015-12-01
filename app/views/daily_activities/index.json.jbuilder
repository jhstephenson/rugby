json.array!(@daily_activities) do |daily_activity|
  json.extract! daily_activity, :id, :date, :client_id, :user_id, :hours, :description, :billable, :rate, :project_id, :merged
  json.url daily_activity_url(daily_activity, format: :json)
end
