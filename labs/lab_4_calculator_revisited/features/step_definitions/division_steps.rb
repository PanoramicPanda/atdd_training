require 'calculator'

When(/^I divide two numbers$/) do
  @quotient = Calculator.new.divide(100,10)
end

Then(/^I get the quotient$/) do
  expect(@quotient).to eq 10
end

When(/^I divide a number by one$/) do
  @quotient = Calculator.new.divide(100,1)
end

Then(/^the quotient is that number$/) do
  expect(@quotient).to eq 100
end

When(/^I divide zero by a number$/) do
  @quotient = Calculator.new.divide(0,10)
end

Then(/^the quotient is zero$/) do
  expect(@quotient).to eq 0
end

When(/^I divide the same numbers in different orders$/) do
  @quotient1 = Calculator.new.divide(100,10)
  @quotient2 = Calculator.new.divide(10,100)
end

Then(/^the quotients are the different$/) do
  expect(@quotient1).to_not eq @quotient2
end

When(/^I divide more than two numbers$/) do
  @quotient = Calculator.new.divide(100,2,5)
end