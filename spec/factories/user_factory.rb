FactoryBot.define do
  sequence(:email) { |n| "#user#{n}@example.com" }
  factory :user do
    email
    password "111111"
    first_name "Alli"
    last_name "Example"
    admin false
  end
  factory :admin, class: User do
    email
    password "111111"
    first_name "Alli"
    last_name "Example"
    admin true
  end
end
