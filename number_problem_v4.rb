puts "Let's play a number game. How many numbers would you like to enter?"
count = gets.chomp.to_i # assign user's input to variable count
numbers_array = Array.new() # create an empty array
count.times do |n| # add user's entered values into array
    puts "Please enter positive integer №#{n+1}"
    number=gets.chomp.to_i
    numbers_array << number
end
numbers_array.length.times do |i| #compare current value with last value in the array 
   if numbers_array[i] < numbers_array.last
    puts "The value at index #{i}, #{numbers_array[i]} is less than value at the last index, #{numbers_array.last}."
   elsif numbers_array[i] > numbers_array.last
    puts "The value at index #{i}, #{numbers_array[i]} is greater than value at the last index, #{numbers_array.last}."
   else numbers_array[i] == numbers_array.last
    puts "The value at index #{i}, #{numbers_array[i]} is equal to the value at the last index, #{numbers_array.last}."
   end
end
min = numbers_array.first #define first value of minimum
max = numbers_array.first #define first value of maximum
sum = 0
aver = 0
numbers_array.length.times do |i| #compare current value with next in the array to find a minimum and maximum
    if min > numbers_array[i]
        min = numbers_array[i] 
    end    
    if max < numbers_array [i]
        max = numbers_array[i]
    end
sum = sum + numbers_array[i] #find a summary of all elements in array
aver = sum.to_f / numbers_array.length # calculate the average value and convert summary to float
end
puts "The minimum value in the array is #{min}." #print conclusion messages
puts "The maximum value in the array is #{max}."
puts "The average value in the array is #{aver}."
