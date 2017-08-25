# Reverse the text of the string without using the reverse method
string = 'desserts'

reversed = ''

a = string.length - 1

while a >= 0
  reversed.concat(string[a])
  a-=1
end

puts reversed