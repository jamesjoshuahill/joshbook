require 'rails_helper'

RSpec.feature "Home page", type: :feature do
  scenario "Can see the home page" do
    visit "/"

    expect(page).to have_content("Welcome!")
  end
end
