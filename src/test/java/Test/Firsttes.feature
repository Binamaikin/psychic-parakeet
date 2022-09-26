Feature: Sampel API Test

  Scenario: Test a Sample Get API
    Given url "https://dummy.restapiexample.com/api/v1/employees"
    When method GET
    Then status 200
