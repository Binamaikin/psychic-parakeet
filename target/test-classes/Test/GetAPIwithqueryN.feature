Feature: GET API with query Parameters

Scenario: get all active usrs
* def query = {status: 'active', gender: 'male', id:4152}

Given url 'https://gorest.co.in/public/v2/users'
And params query
When method GET
Then status 200
* print response


Scenario: get all active usrs and get user count
* def query = {status: 'active'}

Given url 'https://gorest.co.in/public/v2/users'
And params query
When method GET
Then status 200
* def jsonResponse = response
* print jsonResponse
* def userCount = jsonResponse.length
* print userCount
* match userCount == 10



