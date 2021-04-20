# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence }
    sub_title { Faker::Lorem.sentence }
    details { Faker::Lorem.paragraph(sentence_count: 10) }
    association :user, factory: :user
  end
end
