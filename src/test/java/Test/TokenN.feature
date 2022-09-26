Feature: GET API Feature

Scenario: get user details
Given url 'https://gorest.co.in/public/v2/users'
And path '30'
* def  tokenID 'e309662129815f44d0e42a1f012c4d7cc051576f95c1894fa6708642336a173b'
* print tokenID
When method GET
Then status 200
