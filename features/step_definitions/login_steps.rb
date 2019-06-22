Given("I am on the log in page") do
  visit session_new_path
end

When('I fill the login') do
  page.has_content? "Log in"
  fill_in "Email", with: "flusp@usp.br"
  fill_in "Senha", with: "opensource"
  click_button "Log in"
end

#Then(/^I should see "(.*)"$/) do |mensagem|
#  expect(page).to have_content(mensagem)
#end
