require 'rails_helper'

RSpec.feature "Contact", :type => :feature do
  scenario "Create a new contact" do
    visit "/contacts/new"

    fill_in "Full name", :with => "My Name"
    fill_in "Email", :with => "my@email.com"
    fill_in "Phone number", :with => "123456789"
    fill_in "Address", :with => "34, Allen Way, OA"

    click_button "Create Contact"

    expect(page).to have_text("My Name")
  end
end