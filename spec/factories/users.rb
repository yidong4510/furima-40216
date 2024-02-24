FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.email }
    password              { "1a#{Faker::Internet.password(min_length: 6)}" }
    password_confirmation { password }
    last_name             { Faker::Japanese::Name.first_name }
    first_name            { Faker::Japanese::Name.last_name }
    kana_last_name        { Faker::Japanese::Name.last_name.yomi }
    kana_first_name       { Faker::Japanese::Name.last_name.yomi }
    birthday              { Faker::Date.birthday }
  end
end
