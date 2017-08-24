require 'watir-webdriver'

class MainPage
  include PageObject

  page_url'https://www.southwest.com'

  text_field(:departure, :id => 'air-city-departure')

end