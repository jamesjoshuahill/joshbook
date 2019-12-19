require 'rails_helper'

RSpec.feature "Sign in", type: :feature do
  scenario "Registered user can sign in" do
    user = FactoryBot.create(:user)
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    click_button "Sign in"

    expect(page).to have_content("Signed in successfully")
    expect(page).to have_content("Latest posts")
  end
end
