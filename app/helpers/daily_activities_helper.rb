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

module DailyActivitiesHelper
end
