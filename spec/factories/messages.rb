# == Schema Information
#
# Table name: messages
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  client_id          :integer
#  name               :string
#  received           :datetime
#  phone              :string
#  cell               :string
#  message            :text
#  telephoned         :boolean
#  returned_your_call :boolean
#  please_call        :boolean
#  will_call_again    :boolean
#  came_to_see_you    :boolean
#  wants_to_see_you   :boolean
#  other              :boolean
#  other_text         :text
#  status             :string
#  taken_by           :string
#  resolved           :datetime
#  from               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_messages_on_client_id  (client_id)
#  index_messages_on_user_id    (user_id)
#

FactoryGirl.define do
  factory :message do
    user nil
client nil
name "MyString"
received "2015-12-31 17:59:24"
phone "MyString"
cell "MyString"
message "MyText"
telephoned false
returned_your_call false
please_call false
will_call_again false
came_to_see_you false
wants_to_see_you false
other false
other_text "MyText"
status "MyString"
taken_by "MyString"
resolved "2015-12-31 17:59:24"
from "MyString"
  end

end
