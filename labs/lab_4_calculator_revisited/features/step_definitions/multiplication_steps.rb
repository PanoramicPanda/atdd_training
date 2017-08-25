require 'calculator'

When(/^I multiply two numbers$/) do
  @product = Calculator.new.multiply(10,5)
end

Then(/^I get the product$/) do
  expect(@product).to eq 50
end

When(/^I multiply a number by one$/) do
  @product = Calculator.new.multiply(10,1)
end

Then(/^the product is that number$/) do
  expect(@product).to eq 10
end

When(/^I multiply a number by zero$/) do
  @product = Calculator.new.multiply(500,0)
end

Then(/^the product is zero$/) do
  expect(@product).to eq 0
end

When(/^I multiply the same numbers in different orders$/) do
  @product1 = Calculator.new.multiply(10,5)
  @product2 = Calculator.new.multiply(5,10)
end

Then(/^the products are the same$/) do
  expect(@product1).to eq @product2
end

When(/^I multiply more than two numbers$/) do
  @product = Calculator.new.multiply(2,5,5)
end

When(/^I multiply by a word it will fail with "([^"]*)"$/) do |errorstring|
  expect {Calculator.new.multiply(50,"bob")}.to raise_error(errorstring)
end