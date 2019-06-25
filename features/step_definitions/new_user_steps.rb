Given("I am on the home page") do
  visit root_path
end

When(/^I click "(.*)"$/) do |button|
  click_link(button)
end

Then(/^I should see "(.*)"$/) do |message|
  expect(page).to have_content(message)
end
