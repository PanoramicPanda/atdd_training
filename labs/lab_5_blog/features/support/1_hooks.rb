require 'watir'
require 'page-object'
require 'cucumber'
require_relative Dir.pwd + '/features/support/home_page'

include PageObject::PageFactory

Before do
  @browser = Watir::Browser.new(:chrome)
  visit(HomePage)
end