# frozen_string_literal: true

require 'features_helper'

describe 'Visit home' do
  it 'Finds main title' do
    visit '/'

    expect(page).to have_content('CycleHub')
  end
end
