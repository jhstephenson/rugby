# == Schema Information
#
# Table name: tasklists
#
#  id                         :integer          not null, primary key
#  user_id                    :integer
#  client_id                  :integer
#  project_id                 :integer
#  taskname                   :string
#  description                :text
#  status_id                  :integer
#  estimated_time_to_complete :decimal(, )
#  start_date                 :date
#  date_needed_by             :date
#  actual_date_completed      :date
#  actual_time_to_complete    :decimal(, )
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
# Indexes
#
#  index_tasklists_on_client_id   (client_id)
#  index_tasklists_on_project_id  (project_id)
#  index_tasklists_on_status_id   (status_id)
#  index_tasklists_on_user_id     (user_id)
#

FactoryGirl.define do
  factory :tasklist do
    user nil
client nil
project nil
taskname "MyString"
description "MyText"
status nil
estimated_time_to_complete "9.99"
start_date "2016-02-01"
date_needed_by "2016-02-01"
actual_date_completed "2016-02-01"
actual_time_to_complete "9.99"
  end

end
