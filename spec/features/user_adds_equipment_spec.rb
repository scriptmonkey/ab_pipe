# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User attempts' do
  scenario 'to add new equipment' do
    sign_in
    visit dashboard_path
    click_link 'Equipment'
    click_link 'Add New'
    generator = FactoryBot.build(:equipment, serial_number: '123RJJ')
    fill_in 'Serial number', with: generator.serial_number
    click_button 'Save'

    expect(page).to have_current_path(equipment_index_path)
    expect(page).to have_content(generator.serial_number)
  end
  scenario 'to click on new equipment link' do
    sign_in
    visit dashboard_path
    click_link 'Equipment'
    click_link 'Add New'

    expect(page).to have_current_path(new_equipment_path)
  end
end
