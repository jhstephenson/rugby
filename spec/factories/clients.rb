# == Schema Information
#
# Table name: clients
#
#  id             :integer          not null, primary key
#  name           :string
#  address_line_1 :string
#  address_line_2 :string
#  city           :string
#  state          :string
#  zip            :string
#  phone          :string
#  contact_name   :string
#  contact_email  :string
#  contact_phone  :string
#  billing_rate   :decimal(, )
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  internal_id    :integer
#
# Indexes
#
#  index_clients_on_internal_id  (internal_id)
#

FactoryGirl.define do
  factory :client do
    name            { Faker::Name.name }
    address_line_1  { Faker::Address.street_address }
    address_line_2  { Faker::Address.secondary_address }
    city            { Faker::Address.city }
    state           { Faker::Address.state }
    zip             { Faker::Address.zip }
    phone           { Faker::PhoneNumber.phone_number }
    contact_name    { Faker::Name.name }
    contact_email   { Faker::Internet.email }
    contact_phone   { Faker::PhoneNumber.phone_number }
    billing_rate    { Faker::Commerce.price }
    status          { Faker::Hacker.verb }
    internal_id     { Faker::Number.number(5) }
  end

end