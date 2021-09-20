FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 6) }
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    age_id                { 1 }
    gender_id             { 1 }
    favorite              { 'キリンビール' }
  end
end