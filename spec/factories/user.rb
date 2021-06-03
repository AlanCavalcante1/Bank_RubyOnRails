require 'faker'

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name  }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
  end
end