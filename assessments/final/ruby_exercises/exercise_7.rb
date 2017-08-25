# Write a method that verifies the sort order of the following contract statuses
# The correct sort order is all Active contracts then Restricted contracts followed by Inactive contracts
#
# tips: The method can just return a simple true/false value
#
# expected output:
#  true
#  false
#  true
#  false


contracts_1 = %w(Active Restricted Restricted Inactive Inactive Inactive)
contracts_2 = %w(Active Restricted Active Inactive)
contracts_3 = %w(Active Inactive)
contracts_4 = %w(Active Active Active Restricted Inactive Restricted Inactive )

#Method goes here

class Contracts
  def check_sort(array)
    is_sorted = true
    array.each_with_index{ |x, i|
      if x == "Active"
        array.each_with_index {|y , j|
          if j < i && y != "Active"
            is_sorted = false
          end
        }
      elsif x == "Restricted"
        array.each_with_index {|y , j|
          if j < i && y == "Inactive"
            is_sorted = false
          end
        }
      end
    }
    return is_sorted
  end
end

# method call goes here

test = Contracts.new()

puts test.check_sort(contracts_1)
puts test.check_sort(contracts_2)
puts test.check_sort(contracts_3)
puts test.check_sort(contracts_4)