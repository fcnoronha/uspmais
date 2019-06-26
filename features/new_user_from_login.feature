Feature: Go to new user page
         In order to create new user
         As a viewer
         I want to access the create user page

            Scenario: Access new user page
                    Given I am on the log in page
                    When I click "Criar usuário!"
                    Then I should see "USER+"
