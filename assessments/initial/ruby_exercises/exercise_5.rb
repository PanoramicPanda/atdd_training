#Find all the Saturdays in the current month # returns them as dd/mm/yyyy
require 'date'

curr_month = Time.now.month
curr_year = Time.now.year
total_days =   Date.new(curr_year, curr_month, -1).day

Date.new(curr_year, curr_month, 01).upto(Date.new(curr_year, curr_month, total_days)) do |date|
 if date.saturday?
   puts date.strftime("%d/%m/%Y")
 end
end