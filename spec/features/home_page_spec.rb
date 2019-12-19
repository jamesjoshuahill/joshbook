require 'rails_helper'

RSpec.feature "Home page", type: :feature do
  scenario "Can see the home page" do
    visit "/"

    within 'h2' do
      expect(page).to have_content("Welcome!")
    end
  end
end
