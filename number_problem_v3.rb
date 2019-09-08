puts "Let's play a number game. How many numbers would you like to enter?"
count = gets.chomp.to_i
count.times do |n|
    puts "Please enter positive integer №#{n+1}"
    number=gets.chomp.to_i
    if number%3>0
        puts "#{number} is not divisible by 3."
    else
        puts "#{number} is divisible by 3."
    end
end
