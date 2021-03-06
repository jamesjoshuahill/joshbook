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
    expect(page).to have_content("Latest posts")
  end

  scenario "Validates email and short password" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "j"
    fill_in "Password", with: "p"
    fill_in "Password confirmation", with: "p"

    click_button "Sign up"

    expect(page).to have_content("Email is invalid")
    expect(page).to have_content("Password is too short")
  end

  scenario "Validates long password" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "longer-than-allowed"
    fill_in "Password confirmation", with: "longer-than-allowed"

    click_button "Sign up"

    expect(page).to have_content("Password is too long")
  end
end
