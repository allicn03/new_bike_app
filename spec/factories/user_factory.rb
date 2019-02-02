FactoryBot.define do
  sequence(:email) { |n| "#user#{n}@example.com" }

  factory :user do
    email
    password "1234567890"
    first_name "UserFirstName"
    last_name "UserLastName"
    admin false
  end
  factory :admin, class: User do
    email
    password "asdfghjkl"
    first_name "AdminFirstName"
    last_name "AdminLastName"
    admin true
  end
end
