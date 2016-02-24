require 'rails_helper'

RSpec.feature 'Editing a fundrr', type: :feature do
  scenario 'updates the fundrr'
  
    visit '/fundrrs/'
end