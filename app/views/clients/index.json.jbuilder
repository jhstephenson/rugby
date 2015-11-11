json.array!(@clients) do |client|
  json.extract! client, :id, :name, :address_line_1, :address_line_2, :city, :state, :zip, :phone, :contact_name, :contact_email, :contact_phone, :billing_rate, :status
  json.url client_url(client, format: :json)
end
