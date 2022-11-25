# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :status, default: 0
      t.references :project, null: false, foreign_key: true
      t.references :creator
      t.references :assignee

      t.timestamps
    end
  end
end
