Given(/^I am on the real Budget rental car site$/) do
  on_page RentalPage do |page|
    expect(page.current_url).to eq 'https://www.budget.com/en/home'
  end
end

When(/^I search for cars available for the weekend$/) do
  on(RentalPage).pickup_location = 'CMH'
  on(RentalPage).pick_next_weekend
  on(RentalPage).submit_search
end

Then(/^rental rates for a Compact car displayed$/) do
  expect(on(RentalPage).cars).to include 'Economy' #Couldn't figure out how to grab lower div
end

When(/^I search for available cars$/) do
  on(RentalPage).pickup_location = 'CMH'
  on(RentalPage).pick_next_weekend
  on(RentalPage).submit_search
end

Then(/^then the Pay at Counter rate is higher then the Pay Now rate$/) do
  expect(on(RentalPage).pay_later).to be > on(RentalPage).pay_now #broken @wip
end

Given(/^a list of available vehicles$/) do
  pending
end

When(/^I open a vehicle's information$/) do
  pending
end

Then(/^the mpg for the vehicle is shown$/) do
  pending
end