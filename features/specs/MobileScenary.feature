Feature: Mobile scenary

@exec
Scenario: Register new customer
    Given the user access the customer registration application
    When the user click on register new customer
    Then the register must be saved


Scenario: Update register customer
    Given the user access the customer registration application
    When the user click your register
    And update your telephone number
    Then the update must be saved

@exec
Scenario: Delete register customer
    Given the user access the customer registration application
    When the user click your register
    And click on delete register button
    Then the register must be deleted


Scenario: About app
    Given the user access the customer registration application
    When the user click on about app button
    Then the user must see info about app


Scenario: Export data
    Given the user access the customer registration application
    When the user click on Export data button
    Then the user must see three options of export data
