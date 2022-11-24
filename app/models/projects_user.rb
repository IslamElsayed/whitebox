class ProjectsUser < ApplicationRecord
  enum role: [:collaborator, :owner]

  belongs_to :project
  belongs_to :user
end
