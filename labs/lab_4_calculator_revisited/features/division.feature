Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their quotient

  Scenario: Divide numbers to get a quotient
    When I divide two numbers
    Then I get the quotient

  Scenario: Divide by one
    When I divide a number by one
    Then the quotient is that number

  Scenario: Divide zero
    When I divide zero by a number
    Then the quotient is zero

  Scenario: Divide numbers in different orders
    When I divide the same numbers in different orders
    Then the quotients are the different

  Scenario: Divide more than two numbers
    When I divide more than two numbers
    Then I get the quotient
