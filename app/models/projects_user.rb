# frozen_string_literal: true

class ProjectsUser < ApplicationRecord
  enum role: %i[collaborator owner]

  # associations
  belongs_to :project
  belongs_to :user
end
