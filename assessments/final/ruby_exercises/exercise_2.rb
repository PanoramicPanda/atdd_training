# separate the following array into two arrays, one containing odd numbers, the others containing the even numbers
# Do not use the even? and odd? methods

# expected output:
# evens = [2,4,6,8,10]
# odds  = [1,3,5,7,9]

test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

evens = []

odds = []

test_array.each{|x|
  mod = x%2
  if mod == 0
    evens.push(x)
  else
    odds.push(x)
  end
}

p "evens = #{evens}"
p "odds = #{odds}"
