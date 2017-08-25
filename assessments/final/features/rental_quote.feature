Feature: Viewing Rental Rates and Features

  Scenario: View Rental Rates for weekend rental
    Given I am on the real Budget rental car site
    When I search for cars available for the weekend
    Then rental rates for a Compact car displayed

  @wip
  Scenario: Pay at Counter Rental Rates
    When I search for available cars
    Then then the Pay at Counter rate is higher then the Pay Now rate

  @wip
  Scenario: Viewing Vehicle MPG
    Given a list of available vehicles
    When I open a vehicle's information
    Then the mpg for the vehicle is shown