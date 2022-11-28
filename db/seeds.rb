# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

3.times do |i|
  User.create(email: "email#{i}@email.com", name: "user#{i}", password: 123456)
end