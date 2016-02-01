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

module TasklistsHelper
end
