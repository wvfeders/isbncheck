

def isbn10(isbn_array, isbn_number)
counter= 0
total10 = 0
10.times do
number  = isbn_array[counter]
total10 = total10 + (number*(counter+1))
counter = counter +1
end

print "The check total is #{total10}.  \n \n"
if 0 == total10%11
	print "#{isbn_number} is a valid 10 digit ISBN number.  \n \n"
else
	print "#{isbn_number} is NOT a valid 10 digit ISBN number.  \n \n"	
end
end

def isbn13(isbn_array, isbn_number)
counter= 0
total13 = 0
multiples_array = [1,3,1,3,1,3,1,3,1,3,1,3,1]
13.times do
number  = isbn_array[counter]
multiplier = multiples_array[counter]
total13 = total13 + (number * multiplier)
counter += 1
end
print "The check total is #{total13}.  \n \n"
if 0 == total13%10
	print "#{isbn_number} is a valid 13 digit ISBN number. \n \n"
else
	print "#{isbn_number} is NOT a valid 13 digit ISBN number.  \n \n"	
end
end


puts "Type your ISBN number: \n \n" #code only works with lower case
isbn_number = gets.chomp
isbn_array = isbn_number.split("").map(&:to_i)#("") {|s| s.to_i}
#    number_count =  isbn_array.count 
puts "\nYour number has #{isbn_array.count} digits \n \n"
if isbn_array.count == 10
	print "This number is an acceptable length \n \n"
	isbn10(isbn_array, isbn_number)
elsif isbn_array.count == 13
	print "This number is an acceptable length \n \n"
	isbn13(isbn_array, isbn_number)	
else
	abort ("This number is not of the proper length  \n \n")
end	

