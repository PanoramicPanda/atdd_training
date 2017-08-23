#Print the names of all of the files that appear on the left of the screen

a = Dir.glob('../**/*').select{ |e| File.file? e }

puts a