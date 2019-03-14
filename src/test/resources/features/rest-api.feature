Feature: Create rest service that return integer number depending on alphabetical number

  Scenario: Send request with "one" value
    Given Request with "one" as parameter
    When send the request
    Then response status should be 200
    And number in response body should be 1

  Scenario: Send request with "two" value
    Given Request with "two" as parameter
    When send the request
    Then response status should be 200
    And number in response body should be 2

  Scenario: Send request with "three" value
    Given Request with "three" as parameter
    When send the request
    Then response status should be 200
    And number in response body should be 3

  Scenario: Send request with "four" value
    Given Request with "four" as parameter
    When send the request
    Then response status should be 200
    And number in response body should be 4

  Scenario: Send request with "five" value
    Given Request with "five" as parameter
    When send the request
    Then response status should be 200
    And number in response body should be 5

  Scenario: Send request with "six" value
    Given Request with "six" as parameter
    When send the request
    Then response status should be 404