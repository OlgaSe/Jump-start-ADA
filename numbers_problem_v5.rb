count = 5
first_array = Array.new
second_array = Array.new
first_hash = Hash.new
second_hash = Hash.new
count3 = 3 

count.times do 
first_array << rand(11..21)
end

puts "Please provide five integer values between 12 and 21, both inclusive:"
count.times do |n|
    puts "Please enter positive integer №#{n+1}"
    user_input = gets.chomp.to_i
    second_array << user_input
end

first_hash [:random_numbers] = first_array
first_hash [:user_input] = second_array

all_numbers = first_hash [:random_numbers] + first_hash [:user_input] # to run a loop using both keys random:, user: 
all_numbers.each do |key|
    found_in_random_number = 0
    found_in_user_input = 0

    first_hash [:random_numbers].each do |v|
        if key == v
            found_in_random_number += 1
        end
    end

    first_hash [:user_input].each do |v|
        if key == v
            found_in_user_input += 1
        end
    end
    key_info = Hash.new
    key_info[:random]=found_in_random_number
    key_info[:user] = found_in_user_input
    second_hash[key] = key_info
end

count3.times do
    puts "Give me a number you want information about:"
    number=gets.chomp.to_i

    if not second_hash.key?(number)
        puts "No such number"
        next 
    end

    key_info = second_hash[number] #get a value from second hash with key number and assign to key_info. Key_info stores repetition counters 
    
    if key_info[:random] == 0 #compare value by key :random
        puts "Using only the second hash: \nThe number, #{number} did not show in the randomly generated numbers."
    else
        puts "Using only the second hash: \nThe number, #{number} shows up #{key_info[:random]} times in the randomly generated numbers."
    end

    if key_info[:user] == 0 #compare value by key :user
        puts "Using only the second hash: \nThe number, #{number} was not provided by the user earlier."
    else
        puts "Using only the second hash: \nThe number, #{number} was provided #{key_info[:user]} by the user earlier."
    end

    found_in_random_number = 0
    found_in_user_input = 0

    first_hash [:random_numbers].each do |v|
        if number == v
            found_in_random_number += 1
        end
    end

    first_hash [:user_input].each do |v|
        if number == v
            found_in_user_input += 1
        end
    end

    if found_in_random_number == 0 #compare value by key :random
        puts "Using only the first hash: \nThe number, #{number} did not show in the randomly generated numbers."
    else
        puts "Using only the first hash: \nThe number, #{number} shows up #{found_in_random_number} times in the randomly generated numbers."
    end

    if found_in_user_input == 0 #compare value by key :user
        puts "Using only the first hash: \nThe number, #{number} was not provided by the user earlier."
    else
        puts "Using only the first hash: \nThe number, #{number} was provided #{found_in_user_input } by the user earlier."
    end

end