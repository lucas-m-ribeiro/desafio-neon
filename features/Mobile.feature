Feature: Mobile

#cenarios referente ao app

Background:
    Given the user access the customer registration application

@mobile
Scenario: Register new customer
    When the user click on register new customer
    Then the register must be saved

Scenario: Update register customer
    When the user click your register
    And update your telephone number
    Then the update must be saved

@mobile
Scenario: Delete register customer
    When the user click your register
    And click on delete button
    Then the register must be deleted

Scenario: About app
    When the user click on about app button
    Then the user must see info about app

Scenario: Export data
    When the user click on Export data button
    Then the user must see three options of export data
