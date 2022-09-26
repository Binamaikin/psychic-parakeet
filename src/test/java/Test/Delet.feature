Feature: Delet API Demo

  Scenario: Delet Api Demo1
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
    And print response
