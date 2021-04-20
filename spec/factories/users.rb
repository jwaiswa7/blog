FactoryBot.define do
  factory :user do
    admin { false }
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { "fakepassword" }
    password_confirmation { "fakepassword"}
  end
end
