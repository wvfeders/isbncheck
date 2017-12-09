puts "Type your ISBN number: " #code only works with lower case
isbn_number = gets.chomp
isbn_array = isbn_number.split("").map(&:to_i)#("") {|s| s.to_i}
    number_count=  isbn_array.count 

print isbn_array
puts "Your number has #{isbn_array.count} digits"
if isbn_array.count != 10 && isbn_array.count != 13
	abort ("This number is not of the proper length")
	
else print "This number is an acceptable length \n"
end


def isbn10(isbn_array, number_count,isbn_number)
counter= 0
total10 = 0
number_count.times do
number  = isbn_array[counter]
total10 = total10 + (number*(counter+1)) #newnumber +(number * counter)


#puts counter, number, newnumber
counter = counter +1
end
#end
print "The check total is #{total10}.  \n"
if 0 == total10%11
	print "#{isbn_number} is a valid 10 digit ISBN number"
else
	print "#{isbn_number} is NOT a valid 10 digit ISBN number"	
end
end

def isbn13(isbn_array, number_count, isbn_number)
counter= 0
total13 = 0
multiples_array = [1,3,1,3,1,3,1,3,1,3,1,3,1]
number_count.times do
number  = isbn_array[counter]
multiplier = multiples_array[counter]
total13 = total13 + (number * multiplier)
#puts multiplier, total
counter += 1
end
print "The check total is #{total13}.  \n"
if 0 == total13%10
	print "#{isbn_number} is a valid 13 digit ISBN number"
else
	print "#{isbn_number} is NOT a valid 13 digit ISBN number"	
end
end

if isbn_array.count == 10
	isbn10(isbn_array, number_count, isbn_number)
else
	isbn13(isbn_array, number_count, isbn_number)
end
