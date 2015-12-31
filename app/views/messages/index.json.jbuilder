json.array!(@messages) do |message|
  json.extract! message, :id, :user_id, :client_id, :name, :received, :phone, :cell, :message, :telephoned, :returned_your_call, :please_call, :will_call_again, :came_to_see_you, :wants_to_see_you, :other, :other_text, :status, :taken_by, :resolved, :from
  json.url message_url(message, format: :json)
end
