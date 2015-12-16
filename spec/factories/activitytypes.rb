# == Schema Information
#
# Table name: activitytypes
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :activitytype do
    description "MyString"
  end

end
