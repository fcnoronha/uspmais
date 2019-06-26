Given("I am on the create user page") do
  visit new_user_path
end

When('I fill the form') do
  page.has_content? "Criação de usuário"
  fill_in "Nome", with: 'FLUSP'
  fill_in "Email", with: "flusp@usp.br"
  fill_in "Instituto", with: "IME"
  fill_in "Curso", with: "Ciencia da Computaçao"
  fill_in "Conte um pouco sobre a sua organização", with: "Grupo de Software Livre da USP"
  fill_in "Website", with: "www.flusp.com"
  fill_in "Página do Facebook", with: "www.fb.com/flusp"
  fill_in "Twitter", with: "www.twitter.com/flusp"
  fill_in "Crie uma Senha", with: "opensource"
  fill_in "Confirme sua senha", with: "opensource"
  click_on "Crie minha conta!"
end

#Then(/^I should see "(.*)"$/) do |mensagem|
#  expect(page).to have_content(mensagem)
#end
