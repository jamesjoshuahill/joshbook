require 'rails_helper'

RSpec.feature "Sign out", type: :feature do
  scenario "Signed in user can sign out" do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit "/posts"

    click_link "Sign out"

    within '.notice' do
      expect(page).to have_content("Signed out successfully")
    end
    within 'h2' do
      expect(page).to have_content("Welcome!")
    end
  end
end
