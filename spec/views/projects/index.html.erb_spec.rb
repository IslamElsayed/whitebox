# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'projects/index', type: :view do
  before(:each) do
    assign(:projects, [create(:project, name: 'Name')])
  end

  it 'renders a list of projects' do
    render
    assert_select 'tr>td', text: Regexp.new('Name'.to_s), count: 1
  end
end
