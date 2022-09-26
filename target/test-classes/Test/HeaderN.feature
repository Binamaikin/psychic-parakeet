Feature: GET API headers Feature

Scenario: get the user request with headers
Given header Connection = 'keep-alive'
And header Accept-Encoding = 'gzip, deflate, br'
And header User-Agent= 'PostmanRuntime/7.29.2'
And header Host = '<calculated when request is sent>'

When  url 'https://gorest.co.in/public/v2/users'
And path '30'
When method GET
Then status 200
* print response
