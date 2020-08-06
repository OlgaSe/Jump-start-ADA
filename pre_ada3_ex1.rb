
num = rand(1000)
print "Guess a number between 0-999. Enter your number here ==> "
    guess = gets.chomp.to_i
    count = 0

    until num == guess
        if num > guess
            puts "Higher"
        else num < guess
            puts "Lower"
        end
        print "Try again ==> "
        guess = gets.chomp.to_i
        count += 1
    end    
    puts "Good job! The number was #{num}. You\'ve guessed from #{count+1} attempt."  