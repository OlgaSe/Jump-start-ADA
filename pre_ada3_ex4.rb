puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = 0

while input > -1
    input = gets.chomp.to_i
    duplicate = gets.chomp.to_i
    if duplicate == input
        total += input  
    else
        puts "Entries do not match"
    end
end
puts "Result: #{total-input}"