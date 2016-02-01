# == Schema Information
#
# Table name: statuses
#
#  id         :integer          not null, primary key
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :status do
    status "MyString"
  end

end
