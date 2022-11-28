# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProjectsUser, type: :model do
  it { should belong_to(:project) }
  it { should belong_to(:user) }
end
