puts "Welcome to my election voting program. \nElection candidates are: Catboy, Gekko, Owlette."
candidate1=0
candidate2=0
candidate3=0
10.times do |i| #start times loop with i as a loop variable, set on 10 iteration
    puts "Vote: №#{i+1}" #prints number of vote, added +1 to start with 1, not 0
    
    user_input=gets.chomp.capitalize #get user input, capitalize it and assign to variable user_output
    if user_input == "Catboy" #checking if user input is equal to one of candidates name, then add 1 to variable candidate1
        candidate1 += 1
    elsif user_input == "Gekko" #checking if user input is equal to one of candidates name, then add 1 to variable candidate2
        candidate2 += 1
    elsif user_input == "Owlette" #checking if user input is equal to one of candidates name, then add 1 to variable candidate3
        candidate3 += 1
    else puts "Unknown option. Please try again." # if none of user entries equal to candidate's name print this phrase. 
    end
end
puts "Election results! \nVotes summary: \nCatboy - #{candidate1} vote(s), \nGekko - #{candidate2} vote(s), \nOwlette - #{candidate3} vote(s)" #print election results with number of votes for each candidates, that number comes from times loop.

puts "Winner(s):" #checking every candidate if it has the majority of votes, compate to other two. In case of equal results, programm print 2 names.
if candidate1 >= candidate2 && candidate1 >= candidate3 
    puts "Catboy!"
end

if candidate2 >= candidate1 && candidate2 >=candidate3
    puts "Gekko!"
end

if candidate3 >= candidate1 && candidate3 >= candidate1
    puts "Owlette!"
end

