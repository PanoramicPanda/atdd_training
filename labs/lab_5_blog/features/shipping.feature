Feature: Prime Shipping
  As a prime customer
  I want to see that items are prime eligible
  So that I may get free shipping

  Scenario: Eligible for Prime
    When I search for a Prime eligible item
    Then I will see that it's Prime eligible