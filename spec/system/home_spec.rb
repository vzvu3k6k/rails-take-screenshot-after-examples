require 'rails_helper'

RSpec.describe "Home", type: :system do
  before do
    driven_by :selenium_chrome_headless, screen_size: [640, 360]
  end

  it do
    visit home_path
    expect(page).to have_selector('h1', text: 'Home#index')
  end
end
