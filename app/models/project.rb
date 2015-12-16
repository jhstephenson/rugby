# == Schema Information
#
# Table name: projects
#
#  id                   :integer          not null, primary key
#  name                 :string
#  description          :text
#  started_on           :date
#  completed_on         :date
#  estimated_completion :date
#  estimated_hours      :decimal(, )
#  actual_hours         :decimal(, )
#  user_id              :integer
#  client_id            :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_projects_on_client_id  (client_id)
#  index_projects_on_user_id    (user_id)
#

class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :client
end
