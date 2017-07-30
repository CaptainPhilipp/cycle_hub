require 'features_helper'

describe 'Visit home' do
  it 'finds main title' do
    visit '/'

    expect(page).to have_content('CycleHub')
  end
end
