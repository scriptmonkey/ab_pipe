# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Visitor attempts' do
  scenario ' to visit the home page' do
    visit root_path

    expect(page).to have_current_path(root_path)
    expect(page).to have_content('Absolute Pipe')
  end
end
