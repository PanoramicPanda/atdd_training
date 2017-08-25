class RentalPage
  include PageObject

  page_url('https://www.budget.com')

  text_field(:pickup_location, id: 'PicLoc_value')

  text_field(:pickup_date, id:'from')
  text_field(:drop_date, id:'to')

  button(:submit_search, id:'res-home-select-car')

  div(:cars,class: 'dualPayOption')

  link(:pay_later, id:'res-vehicles-pay-later')

  paragraph(:pay_now, class: 'payamntr')

  def pick_next_weekend

    date  = Date.parse('Saturday')
    delta = date > Date.today ? 0 : 7
    next_saturday = date + delta
    self.pickup_date = next_saturday.strftime('%m%d%Y')

    date  = Date.parse('Sunday')
    delta = date > Date.today ? 0 : 7
    next_sunday = date + delta
    self.drop_date = next_sunday.strftime('%m%d%Y')

  end

end