require 'watir'
require 'cucumber'
require 'page-object'
require 'rspec/expectations'
require 'date'

World(RSpec::Matchers)
World(RSpec::Expectations)
World(PageObject::PageFactory)