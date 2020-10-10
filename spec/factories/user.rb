FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "user#{n}@example.com"
    end
    password { "abCD1234" }
    role { "player" }
  end
end