# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User attempts' do
  scenario ' to visit the equipment page' do
    sign_in
    visit dashboard_path
    click_link 'Equipment'

    expect(page).to have_current_path(equipment_index_path)
    expect(page).to have_link('Add New')
  end
end
