# frozen_string_literal: true

class Task < ApplicationRecord
  # associatons
  belongs_to :project
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  belongs_to :assignee, class_name: 'User', foreign_key: 'assignee_id', optional: true

  enum status: %i[to_do in_progress done]

  # validations
  validates :name, presence: true

  # delegates
  delegate :name, to: :creator, prefix: true
  delegate :name, to: :assignee, prefix: true, allow_nil: true
  delegate :name, to: :project, prefix: true
end
