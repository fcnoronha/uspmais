Given("I am on the create user page") do
  visit new_user_path
end

When('I fill the form') do
  page.has_content? "Criação de usuário"
  fill_in "Nome", with: 'FLUSP'
  fill_in "Email", with: "flusp@usp.br"
  fill_in "Instituto", with: "IME"
  fill_in "Curso", with: "Ciencia da Computaçao"
  fill_in "Informações", with: "Grupo de Software Livre da USP"
  fill_in "Link site", with: "www.flusp.com"
  fill_in "Link Facebook", with: "www.fb.com/flusp"
  fill_in "Link Twitter", with: "www.twitter.com/flusp"
  fill_in "Senha", with: "opensource"
  fill_in "Confirmação de senha", with: "opensource"
  click_on "Criar usuário"
end

#Then(/^I should see "(.*)"$/) do |mensagem|
#  expect(page).to have_content(mensagem)
#end
