require 'page-object'

class MainPage
  include PageObject

  page_url'https://www.southwest.com'

  text_field(:departure, id: 'air-city-departure')
  text_field(:arrival, id: 'air-city-arrival')
  button(:search, id: 'jb-booking-form-submit-button')

end