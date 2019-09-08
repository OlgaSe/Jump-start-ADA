puts "Welcome to our Walk-A-Thon Tracker. Let's raise some money!"
puts "Enter the earning goal for our event: "
goal = gets.chomp.to_i # store user goal input to variable 
puts "Enter the amount earned per lap (per person):"
lap = gets.chomp.to_i # store user input about earned per lap 
puts "Please enter the number of laps completed by each person."
walker_earned_array = Array.new # create an new array with values that earned by each walker

count = 5
count.times do |n| # store user input about laps, calculate how mauch earned and store each walker earned values in array
    puts "Walker №#{n+1}"
    completed_laps = gets.chomp.to_i
    walker_earned = completed_laps * lap
    puts "Earned: $#{walker_earned}"
    walker_earned_array << walker_earned
end

max = walker_earned_array.first # set start value for maximum variable
sum = 0 # set start value for sum variable
max_index = 0 # set start value for max_index variable
walker_earned_array.length.times do |i|  # find a maximum value for all values in array
    if max < walker_earned_array [i]
        max = walker_earned_array[i]
        max_index = i
    end
    sum = sum + walker_earned_array[i] # calculate a summary for all elements of array
end

puts "Highest Earning Walker ##{max_index+1}" 
puts "Total amount earned:#{sum}"
if sum >= goal # define if goal was reached and display corresponding message.
    puts "Goal Met? Yes.:)"
else 
    puts "Goal Met? No :-("
end


