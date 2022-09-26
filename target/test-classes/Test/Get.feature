Feature: Fet API Demo


Background:
* url 'https://reqres.in/api'
* header Accept = 'application/json'

  Scenario: Get Demo one
    Given url 'https://reqres.in/api/users?page=2'
    When method Get
    Then status 200
    And print response
    And print responseStatus
    And print responseTime 
    And print responseHeaders
		And print responseCookies 
		
		
		Scenario: Get Demo 2
    Given path '/users?page=2'
    When method Get
    Then status 200
    And print response
    
    		Scenario: Get Demo 3
    Given path '/users'
    And param page = 2
    When method Get
    Then status 200
    And print response

#get with assertions
Scenario: Get Demo 3
    Given path '/users'
    And param page = 2
    When method Get
    Then status 200
    And print response
    And match response.x.data[0].name
    And assert response.data.length
    And match response.data[3].id  
    
    
