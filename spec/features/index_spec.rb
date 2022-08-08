require 'rails_helper'

RSpec.describe 'All meditations page' do
  
  it 'has each meditation' do
    
    visit 'https://www.micromeditations.org/'

    expect(page).to have_content('equal breaths')
    expect(page).to have_content('box breaths')
    expect(page).to have_content('light stream')
    expect(page).to have_content('three senses')
  end

  it 'allows users to restart' do
    
    visit 'https://www.micromeditations.org/meditations/equal_lengths/restart'

    expect(page).to have_content('equal breaths')

    click_on '↺'
    expect(current_path).to eq('/meditations/equal_lengths')
  end
end