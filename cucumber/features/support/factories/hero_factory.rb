FactoryBot.define do
  factory :hero do
    name { Faker::Superhero.name }
  end
end