# Reverse the words of the string
string = 'I love Ruby!'

string_array = string.split(" ")

string_array[2] = string_array[2].chomp("!")

new_string = ""

string_array.reverse.each_with_index {|x, i|
  new_string.concat(x)
  if i == string_array.length - 1
    new_string.concat("!")
  else
    new_string.concat(" ")
  end
}

puts new_string