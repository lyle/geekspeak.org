FactoryGirl.define do
  factory :user do
    email { |n| "foo#{n}@example.com"}
    password "special"
  end
end