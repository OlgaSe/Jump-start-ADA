puts "Welcome to my MadLib program. Please enter some information below." #Print to the terminal a welcome text and asking the user to enter information
puts "name:".capitalize #print 1st required word 
name=gets.chomp #user input converts to string and it's value get stored in the variable named name
puts "Adjective:" #print 2nd required word 
adj1=gets.chomp #user input converts to string and it's value get stored in the variable named adj1
puts "Number:" #print 3d required word 
num=gets.chomp.to_i #user input converts to integer and it's value get stored in the variable named num
puts "Noun:" #print 4th required word 
noun=gets.chomp #user input converts to string and it's value get stored in the variable named noun
puts "Animal:" #print 5th required word 
animal=gets.chomp #user input converts to string and it's value get stored in the variable named animal
puts "Adjective:" #print 6th required word 
adj2=gets.chomp #user input converts to string and it's value get stored in the variable named adj2
puts "Color:" #print 7th required word 
color=gets.chomp.capitalize #user input converts to string and it's value get stored in the variable named color
puts "Food:" #print 8th required word 
food=gets.chomp #user input converts to string and it's value get stored in the variable named food
puts "Almost there:) Verb:" #print 9th required word 
verb1=gets.chomp #user input converts to string and it's value get stored in the variable named verb1
puts "The last one! Verb:" #print 10th required word 
verb2=gets.chomp #user input converts to string and it's value get stored in the variable named verb2
puts "Here is your Madlib...".upcase # print prior to result phrase
puts "Meet a completely new animal invented by you!  \n It's name is #{name} and it has a #{adj1} personality, overall it has a great sence of humor and super friendly. \n In addition, it looks lovely: #{num} legs, a lots of #{noun}, face reminds of #{animal} and #{adj1} body. It's full body covered by #{color} fur with stripes. \n Besides #{food} is it's favourite food. #{name} likes to play, #{verb1} and make jokes, but most of the time it prefers to #{verb2}." #print the result story
