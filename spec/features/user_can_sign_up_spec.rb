require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "New user can sign up" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "josh@example.com"
    fill_in "Password", with: "1234567890"
    fill_in "Password confirmation", with: "1234567890"

    click_button "Sign up"

    expect(page).to have_content("Welcome! You have signed up successfully")
  end
end
