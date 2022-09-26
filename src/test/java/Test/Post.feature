Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')

  Scenario: Post Demo1
    Given url  'https://reqres.in/api/users'
    And request {"name": "Maikin","job": "Teacher"}
    When method POST
    Then status 201
    And print response

  Scenario: Post Demo2
    Given path '/users'
    And request {"name": "Maikin","job": "Teacher"}
    When method POST
    Then status 201
    And print response

  Scenario: Post Demo3
    Given path '/users'
    And request {"name": "Maikin","job": "Teacher"}
    When method POST
    Then status 201
    And match response == {"name": "Maikin","job": "Teacher","id": "#string","createdAt": "#ignore"}
    And print response

  Scenario: Post Demo4
    Given path '/users'
    And request {"name": "Maikin","job": "Teacher"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response

  Scenario: Post Demo5
    Given path '/users'
    And def requestBody = read('request1.json')
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response
