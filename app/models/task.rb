# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :project
  belongs_to :creator, class_name: 'User'
  belongs_to :assignee, class_name: 'User'

  enum status: %i[to_do in_progress done]
end
