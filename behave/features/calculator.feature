Feature: Calculator
  In order to perform basic calculations
  As a user
  I want to be able to add numbers

  Scenario: Addition
    Given I have a calculator
    When I add 5 and 7
    Then the result should be 12

  Scenario Outline: Multiple additions
    Given I have a calculator
    When I add <number1> and <number2>
    Then the result should be <result>

    Examples:
      | number1 | number2 | result |
      | 1       | 1       | 2      |
      | 10      | 20      | 30     |
      | -5      | 5       | 0      |
      | 100     | -10     | 90     |

