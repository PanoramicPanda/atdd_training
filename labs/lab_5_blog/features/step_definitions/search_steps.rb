When(/^I search for a product by its exact name$/) do
  on(HomePage).search_box = "Alexa"
  on(HomePage).search_button
end

Then(/^the results are displayed$/) do
  expect(on(ResultsPage).first_result).to be_truthy
end

And(/^the product is the first one in the list$/) do
  expect(on(ResultsPage).first_result).to include "Echo Dot (2nd Generation) - Black"
  #expect(on(ResultsPage).results_element.as[0].text).to eq 'Echo Dot (2nd Generation) - Black'
end

Given(/^I have searched for a product$/) do
  pending
end

When(/^I click the name of the product$/) do
  on(ResultsPage).alexa_link
end

Then(/^the product page opens$/) do
  on_page ProductPage do |page|
    expect(page.current_url).to include 'https://www.amazon.com/Amazon-Echo-Dot-Portable-Bluetooth-Speaker-with-Alexa-Black'
  end
end

When(/^I select Prime Exclusive$/) do
  on(HomePage).set_search_filter = 'Pri'
  #on(HomePage).department.value = 'search-alias=prime-exclusive'
end

Then(/^my search results should include any Prime Exclusive deals$/) do
  pending
end