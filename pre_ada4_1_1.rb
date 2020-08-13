
puts "Please enter your password here =>"
password = gets.chomp

# makes the array of separate characters
password_chars = password.split('') 

# creates variables with default values
contains_digit = false
contains_special_char = false
correct_length = false
special_chars = '@%*!'
digits = '1234567890'

# validation loop that iterates over each character in the array and 
#check if it contains a number or a special character
until contains_special_char && contains_digit && correct_length

    contains_digit = false
    contains_special_char = false
    correct_length = false

    password_chars.each do |char|
        if special_chars.include? char
            contains_special_char = true
        end

        if digits.include? char
            contains_digit = true
        end
    end 

    if password_chars.length >= 8
        correct_length = true
    end

    # puts contains_digit
    # puts contains_special_char
    # puts correct_length
# ask user to re-enter a password in case it didn't pass the check
    if contains_digit == false || contains_special_char == false || correct_length == false
        puts "Password should contain a number and a symbol (@, %, *, or !). It must be at least 8 characters long."
        puts "Please re-enter your password here => "
        password = gets.chomp
        password_chars = password.split('')
    end
end
puts "Congratulations! Finally, you've entered password that matches our criteria."
