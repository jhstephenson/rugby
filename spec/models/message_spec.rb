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

require 'rails_helper'

RSpec.describe Message, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
