require 'calculator'

When(/^I subtract two numbers$/) do
  @difference = Calculator.new.subtract 24, 5
end

Then(/^I get the difference$/) do
  expect(@difference).to eq 19
end

When(/^I subtract zero from a number$/) do
  @difference = Calculator.new.subtract 24,0
end

Then(/^the difference is that number$/) do
  expect(@difference).to eq 24
end

When(/^I subtract the same numbers in different orders$/) do
  @difference1 = Calculator.new.subtract 24, 5
  @difference2 = Calculator.new.subtract 5, 24
end

Then(/^the differences are different$/) do
  expect(@difference1).to_not eq @difference2
end

When(/^I subtract more than two numbers$/) do
  @difference = Calculator.new.subtract 49, 5, 10, 15
end

When(/^I subtract a word it will fail with "([^"]*)"$/) do |errorstring|
  expect {Calculator.new.subtract(50,"bob")}.to raise_error(errorstring)
end