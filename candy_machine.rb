puts "Welcome to our candy machine. \nHow much money do you have?"
    user_money = gets.chomp.to_f
    puts "$#{user_money}, that's all? \nWell, let me tell you what we've got here."
    puts "A $0.65 Twix \nB $0.50 Chips \nC $0.75 Mars \nD $0.65 Peanut Butter cup \nE $0.55 Gum"
    user_choice_price = -1
while user_choice_price<0 do
    puts "What would you like?"
    user_choice = gets.chomp.capitalize
    if user_choice=="A"
        user_choice_price = 0.65
    elsif user_choice=="B"
        user_choice_price = 0.5
    elsif user_choice=="C"
        user_choice_price = 0.75
    elsif user_choice=="D"
        user_choice_price = 0.65
    elsif user_choice=="E"
        user_choice_price = 0.55
    else
        puts "Uknown option. Please try again"
    end
end
    if user_choice_price <= user_money
        puts "Please take your candy and here your $#{user_money-user_choice_price} change."
    else 
        puts "You're broke. Take your $#{user_money} and go elsewhere."
    end