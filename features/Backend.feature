Feature: Backend

#cenairos referente a API 

Background: 
    Given the address of api

@api
Scenario: Create new employee
    When the user send request with your information
    Then the user must be registered

@api
Scenario: Update register employee
    When the user send request with id for update
    Then the register must be updated

Scenario: Delete register employee
    When the user send request with id for delete
    Then the register must be deleted

Scenario: employee search id
    When the user send request with id for search
    Then the register must be retorned

Scenario: Create new employee without name
    When the user send request without name
    Then the user must be registered

