# frozen_string_literal: true

class CreateProjectsUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :projects_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
