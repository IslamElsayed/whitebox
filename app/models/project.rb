# frozen_string_literal: true

class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :projects_users
  has_many :tasks
  has_many :users, through: :projects_users

  accepts_nested_attributes_for :projects_users
end
