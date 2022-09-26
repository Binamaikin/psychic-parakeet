Feature: GET API Feature

Scenario: get user details
Given url 'https://gorest.co.in/public/v2/users'
And path '30'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = jsonResponse.name
* def actId = jsonResponse.id
* def actEmail = jsonResponse.email
* print actName
* match actName == 'Subhasini Namboothiri'
* match actId == 30
* match actEmail == 'namboothiri_subhasini@walker.io'



Scenario: get user details - user not found
Given url 'https://gorest.co.in/public/v2/users'
And path '5000'
When method GET
Then status 404


