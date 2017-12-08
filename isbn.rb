puts "Type your ISBN number: " #code only works with lower case
isbn_number = gets.chomp
isbn_array = isbn_number.split("").map(&:to_i)#("") {|s| s.to_i}
    number_count=  isbn_array.count 

print isbn_array
puts "Your number has #{isbn_array.count} digits"
if isbn_array.count != 10 && isbn_array.count != 13
	print "This number is not of the proper length"
else print "This number is an acceptable length"
end

counter= 0
newnumber = 0
number_count.times do
number  = isbn_array[counter]
newnumber = newnumber + (number*(counter+1)) #newnumber +(number * counter)

#if counter == 10
print counter, number
counter = counter +1
end
#end
print "The total is #{newnumber}"