json.array!(@activitytypes) do |activitytype|
  json.extract! activitytype, :id, :description
  json.url activitytype_url(activitytype, format: :json)
end
