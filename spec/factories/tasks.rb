# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    association :project, factory: :project
    association :creator, factory: :user
    name { Faker::Lorem.word }
  end
end
