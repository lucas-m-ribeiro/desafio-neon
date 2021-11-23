Feature: Backend scenary

Scenario: Create new employee
    Given the address of api
    When the user send request with your information
    Then the user must be registered


Scenario: Update register employee
    Given the address of api
    When the user send request with id for update
    Then the register must be updated


Scenario: Delete register employee
    Given the address of api
    When the user send request with id for delete
    Then the register must be deleted


Scenario: employee search id
    Given the address of api
    When the user send request with id for search
    Then the register must be retorned


Scenario: Create new employee without name
    Given the address of api
    When the user send request without name
    Then the user must be registered

