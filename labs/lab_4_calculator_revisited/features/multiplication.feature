Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can know their product

  Scenario: Multiply numbers to get a product
    When I multiply two numbers
    Then I get the product

  Scenario: Multiply by one
    When I multiply a number by one
    Then the product is that number

  Scenario: Multiply by zero
    When I multiply a number by zero
    Then the product is zero

  Scenario: Multiply numbers in different orders
    When I multiply the same numbers in different orders
    Then the products are the same

  Scenario: Multiply more than two numbers
    When I multiply more than two numbers
    Then I get the product
