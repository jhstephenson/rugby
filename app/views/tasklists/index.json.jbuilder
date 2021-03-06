json.array!(@tasklists) do |tasklist|
  json.extract! tasklist, :id, :user_id, :client_id, :project_id, :taskname, :description, :status_id, :estimated_time_to_complete, :start_date, :date_needed_by, :actual_date_completed, :actual_time_to_complete
  json.url tasklist_url(tasklist, format: :json)
end
