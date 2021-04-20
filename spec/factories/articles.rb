FactoryBot.define do
  factory :article do
    title { "MyString" }
    sub_title { "MyString" }
    details { "MyText" }
    user { nil }
  end
end
