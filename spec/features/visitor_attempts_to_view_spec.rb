# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'vistior attempts' do
  scenario 'to view the dashboard page' do
    visit dashboard_path

    expect(page).to have_current_path(sign_in_path)
  end
  scenario 'to view the equipment page' do
    visit equipment_index_path

    expect(page).to have_current_path(sign_in_path)
  end
end
