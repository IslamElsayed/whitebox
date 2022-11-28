# frozen_string_literal: true

class Project < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: true

  # associations
  has_many :projects_users
  has_many :tasks
  has_many :users, through: :projects_users

  accepts_nested_attributes_for :projects_users

  def owner
    projects_users.find_by(role: :owner).user
  end
end
