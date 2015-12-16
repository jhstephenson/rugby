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
    name "MyString"
address_line_1 "MyString"
address_line_2 "MyString"
city "MyString"
state "MyString"
zip "MyString"
phone "MyString"
contact_name "MyString"
contact_email "MyString"
contact_phone "MyString"
billing_rate "9.99"
status "MyString"
  end

end
