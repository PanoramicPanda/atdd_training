require 'rspec'
require 'watir-webdriver'
#require 'main_page'

#include PageObject::PageFactory

describe 'Southwest Lab' do
  before {@browser = Watir::Browser.new(:chrome)}
  before {@browser.goto('https://www.southwest.com')}
  #visit_page MainPage
  describe 'flight search' do
    it 'returns the flight time correctly' do
      @browser.text_field(:id => 'air-city-departure').set 'Denver'
      @browser.text_field(:id => 'air-city-arrival').set 'Columbus'
      @browser.text_field(:id => 'air-date-departure').set '10/10'
      @browser.text_field(:id => 'air-date-return').set '10/18'
      @browser.button(:id => 'jb-booking-form-submit-button').click
      row = @browser.table(:id => 'faresOutbound').rows.to_a.index{ |row| row.text =~ /^777$/ }
      col = @browser.table(:id => 'faresOutbound')[0].cells.to_a.index{ |cell| cell.text =~ /Travel\sTime$/ }
      expect(@browser.table(:id => 'faresOutbound')[row][col].text).to eq "2h 40m"
    end
    it 'gets the correct locations using the airport codes' do
      #@browser.text_field(departure).set 'LAX'
      @browser.text_field(:id => 'air-city-departure').set 'LAX'
      @browser.text_field(:id => 'air-city-arrival').set 'SFO'
      @browser.button(:id => 'jb-booking-form-submit-button').click
      expect(@browser.text_field(:id => 'originAirport_displayed').value).to include "Los Angeles, CA"
      expect(@browser.text_field(:id => 'destinationAirport_displayed').value).to include "San Francisco, CA"
    end
    it 'has a Business Select price for all flights' do
      @browser.text_field(:id => 'air-city-departure').set 'Denver'
      @browser.text_field(:id => 'air-city-arrival').set 'Columbus'
      @browser.text_field(:id => 'air-date-departure').set '10/10'
      @browser.text_field(:id => 'air-date-return').set '10/18'
      @browser.button(:id => 'jb-booking-form-submit-button').click
      expect()
    end
  end
  describe 'disabled fields' do
    it 'does not allow you to add seniors when searching by points' do
      @browser.radio(:id => 'price-type-points').click
      expect(@browser.text_field(:id => 'air-pax-count-seniors')).to be_disabled
    end
    it 'does not allow a return date on a one way trip' do
      @browser.radio(:id => 'trip-type-one-way').click
      expect(@browser.text_field(:id => 'air-date-return')).to be_disabled
    end
  end
  describe 'errors' do
    it 'produces an error message with an invalid promo code' do
      @browser.text_field(:id => 'air-city-departure').set 'LAX'
      @browser.text_field(:id => 'air-city-arrival').set 'SFO'
      @browser.text_field(:id => 'air-promo-code').set 'FAIL'
      @browser.button(:id => 'jb-booking-form-submit-button').click
      expect(@browser.ul(:id => 'errors').inner_html).to include "The promotion code entered was not recognized."
    end
  end
  describe 'booking' do
    it 'has a correct fair total' do

    end
    it 'can remove a flight from the shopping cart' do

    end
  end
end