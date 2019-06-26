Feature: Create new user
         In order to see the my new account page
         As a user
         I want to create an account

                Scenario: view my new account page
                          Given I am on the create user page
                          When I fill the form
                          Then I should see "Cadastro realizado com sucesso!"
