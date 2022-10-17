class Project < ApplicationRecord
  validates :name, presence: true, uniquness: true
end
