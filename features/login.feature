Feature: Log in
         In order to see the "no account page"
         As a user
         I want to log in

                Scenario: view no account page
                          Given I am on the log in page
                          When I fill the login
                          Then I should see "Combinação email/senha inválida!"
