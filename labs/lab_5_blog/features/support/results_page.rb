class ResultsPage
  include PageObject

  #div(:results, id:'atfResults')
  list_item(:first_result, id: 'result_0')


  link(:alexa_link, title: 'Echo Dot (2nd Generation) - Black')

end