require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  context "when logged in" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user, :scope => :user)
    end

    scenario "Can submit posts and view them" do
      visit "/posts"
      click_link "New post"
      fill_in "Message", with: "Hello, world!"
      click_button "Submit"
      expect(page).to have_content("Hello, world!")
    end
  end

  context "when logged out" do
    scenario "redirects to the home page" do
      visit "/posts"

      expect(page).to have_content("Joshbook")
    end
  end
end
