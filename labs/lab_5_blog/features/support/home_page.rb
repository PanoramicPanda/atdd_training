class HomePage
  include PageObject

  page_url 'https://www.amazon.com'

  text_field(:search_box, id: "twotabsearchtextbox")
  button(:search_button, value: "Go")

  select_list(:department, id:"searchDropdownBox")

  def set_search_filter=(filter_name)
    on(HomePage).department_element.element.click
    sleep(2)
    on(HomePage).browser.send_keys(filter_name)
    on(HomePage).browser.send_keys(:enter)
  end
end