Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I can know their difference

  Scenario: Subtracting numbers to get a difference
    When I subtract two numbers
    Then I get the difference

  Scenario: Subtracting zero
    When I subtract zero from a number
    Then the difference is that number

  Scenario: Subtracting numbers in different orders
    When I subtract the same numbers in different orders
    Then the differences are different

  Scenario: Subtracting more than two numbers
    When I subtract more than two numbers
    Then I get the difference
