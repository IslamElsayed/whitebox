# frozen_string_literal: true

FactoryBot.define do
  factory :project do
    name { Faker::Company.name }
  end
end
