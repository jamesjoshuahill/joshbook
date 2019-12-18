require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "New user can sign up" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    click_button "Sign up"

    expect(page).to have_content("Welcome! You have signed up successfully")
  end

  scenario "Validates email and password" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "j"
    fill_in "Password", with: "p"
    fill_in "Password confirmation", with: "p"

    click_button "Sign up"

    expect(page).to have_content("Email is invalid")
    expect(page).to have_content("Password is too short")
  end
end
