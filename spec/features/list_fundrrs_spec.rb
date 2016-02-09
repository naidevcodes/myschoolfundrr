require 'rails_helper'

RSpec.feature 'Listing all fundrrs', type: :feature do
  scenario 'returns a message when there are no fundrrs to view' do
    visit '/' 
    click_link 'Fundrrs'
  
    expect(current_url).to eq(fundrrs_url)
    expect(page).to have_content('0 fundrrs')
  end
  
  scenario 'displays the fundrrs' do
    fundrr1 = Fundrr.create!(title: 'Test Fundrr', description: 'For testing', 
      start_date: '2016-01-20', duration: 90, fundrr_goal: 28000.00)
    fundrr2 = Fundrr.create!(title: 'Test FundrrA', description: 'For testing', 
      start_date: '2016-01-20', duration: 90, fundrr_goal: 28000.00)
    fundrr3 = Fundrr.create!(title: 'Test FundrrB', description: 'For testing', 
      start_date: '2016-01-20', duration: 90, fundrr_goal: 28000.00)
    
    vist '/'
    click_link 'Fundrrs'
    
    expect(current_url).to eq(fundrrs_url)
    expect(page).to have_content('3 fundrrs')
    expect(page).to have_content(fundrr1.title)
    expect(page).to have_content(fundrr1.description)
    expect(page).to have_content(fundrr1.start_date)
    expect(page).to have_content(fundrr1.duration)
    expect(page).to have_content(fundrr1.fundrr_goal)
  end
end