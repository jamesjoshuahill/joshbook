require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  context "when signed in" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user, :scope => :user)
    end

    scenario "Can submit posts and view them" do
      visit "/posts"
      click_link "New post"
      fill_in "Message", with: "Hello, world!"

      click_button "Submit"

      within 'h2' do
        expect(page).to have_content("Latest posts")
      end
      within '.post' do
        expect(page).to have_content("Hello, world!")
      end
    end
  end

  context "when signed out" do
    scenario "redirects to the home page" do
      visit "/posts"

      within 'h2' do
        expect(page).to have_content("Welcome!")
      end
    end
  end
end
