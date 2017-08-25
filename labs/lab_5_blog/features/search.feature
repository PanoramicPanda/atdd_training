Feature: Search
  As a customer
  I want to search for products
  So that I may find things

  Scenario: Searching for a product
    When I search for a product by its exact name
    Then the results are displayed
    And  the product is the first one in the list

  Scenario: View product page
    Given I search for a product by its exact name
    When I click the name of the product
    Then the product page opens

  Scenario: Search by prime exclusive deals
    When I select Prime Exclusive
    And I search for a product by its exact name
    Then my search results should include any Prime Exclusive deals