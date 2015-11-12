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
