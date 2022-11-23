# frozen_string_literal: true

class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :owner
  has_many :collaborators, class_name: 'User'
end
