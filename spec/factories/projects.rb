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

FactoryGirl.define do
  factory :project do
    name "MyString"
description "MyText"
started_on "2015-11-12"
completed_on "2015-11-12"
estimated_completion "2015-11-12"
estimated_hours "9.99"
actual_hours "9.99"
user nil
client nil
  end

end
