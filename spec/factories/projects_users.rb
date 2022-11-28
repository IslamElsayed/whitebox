# frozen_string_literal: true

FactoryBot.define do
  factory :projects_user do
    role { 'collaborator' }
    association :project, factory: :project
    association :user, factory: :user
  end
end
