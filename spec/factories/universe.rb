FactoryBot.define do
  factory :universe do
    game_master factory: :user, role: User::GAME_MASTER
    name { "Fallout" }
    description { "Post-apocaliptic game universe" }
  end
end
