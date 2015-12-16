# == Schema Information
#
# Table name: daily_activities
#
#  id          :integer          not null, primary key
#  date        :date
#  client_id   :integer
#  user_id     :integer
#  hours       :decimal(, )
#  description :string
#  billable    :boolean
#  rate        :decimal(, )
#  project_id  :integer
#  merged      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_daily_activities_on_client_id   (client_id)
#  index_daily_activities_on_project_id  (project_id)
#  index_daily_activities_on_user_id     (user_id)
#

FactoryGirl.define do
  factory :daily_activity do
    date "2015-12-01"
client nil
user nil
hours "9.99"
description "MyString"
billable false
rate "9.99"
project nil
merged false
  end

end
