Feature: Cart
  As a signed in customer
  I want to add items to my cart
  So that I may buy them

  Scenario: Add item to cart
    Given I am on a product page
    When I click "Add to Cart"
    Then the item is added to my cart

  Scenario:  Total cart
    Given I have multiple items in my cart
    When I view my cart
    Then the subtotal should be the sum of the item prices

  Scenario: Remove item from cart
    Given I have multiple items in my cart
    When I view my cart
    And I click the delete link for an item
    Then the item is removed from my cart
    And the subtotal is updated

  Scenario: Unable to check out while signed out
    Given I have multiple items in my cart
    When I view my cart
    And I click "Checkout"
    Then I am prompted to sign in