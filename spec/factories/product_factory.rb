FactoryBot.define do
  sequence(:name) { |n| "#{n}" }

  factory :product do
    name
    description "This is a thing"
    colour "black"
    price 1.0
  end

end
