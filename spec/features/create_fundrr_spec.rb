require 'rails_helper'

RSpec.feature 'Creating a new fundrr', type: :feature do
  scenario 'succeeds with valid values' do
    
    visit '/fundrrs'
    click_link 'New Fundrr'
    
    expect(current_url).to eq(new_fundrr_url)
    
    fill_in 'fundrr_title', with: 'Test Fundrr'
    fill_in 'fundrr_description', with: 'A test fundrr for testing'
    fill_in 'fundrr_start_date', with: '2/10/20016'
    fill_in 'fundrr_duration', with: '90 days'
    fill_in 'fundrr_fundrr_goal', with: '20000'
    click_button 'Create Fundrr'
    
    expect(current_path).to eq(fundrr_path(Fundrr.last))
    expect(page).to have_content('Test Fundrr')
    expect(page).to have_content('Fundrr successfully created')
  end
  
  scenario 'fails if the name is not provided' do
    
    visit '/fundrrs'
    click_link 'New Fundrr'
    
    expect(current_path).to eq(new_fundrr_path)
    
    fill_in 'fundrr_title', with: ''
    
    click_button 'Create Fundrr'
    
    expect(current_path).to eq(fundrrs_path)
    expect(page).to have_content('error')
  end
end