#separate the following array into two arrays, one containing numbers that are square, the others containing numbers that are not square

# expected output:
# squares = [1,4,9]
# not_squares  = [2,3,5,7,8,10]

test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

squares = []

not_squares = []

test_array.each{|x|
  mod = Math.sqrt( x)%1
  if mod == 0
    squares.push(x)
  else
    not_squares.push(x)
  end
}

p "squares = #{squares}"
p "not_squares = #{not_squares}"