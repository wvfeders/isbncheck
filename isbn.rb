puts "Type your ISBN number: " #code only works with lower case
isbn = Integer(gets.chomp) 
split_number = isbn.split('')
print split_number
puts "Your number has #{split_number.count} digits"
if split_number.count != 10 && split_number.count != 13
	print "This number is not of the proper length"
else print "This number is an acceptable length"
end

number  = split_number[0]
newnumber = number  * 2
puts number, newnumber