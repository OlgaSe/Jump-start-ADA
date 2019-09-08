students_data = Array.new
count = 5

puts "Please enter #{count} student names (first and last)."

count.times do |n|
    puts "Enter name №#{n+1}:"
    name = gets.chomp.upcase
    id = rand(111111..999999).to_s
    name_initial = name.slice(0)
    last_name = name.split.last
    id_digits = id.slice(2, 3)
    email = name_initial + last_name + id_digits + "@adadevelopersacademy.org"
    student_hash = {
        name: name,
        id: id,
        email: email
    }
    students_data << student_hash
end

students_data.each do |student_data|
    puts "Name: #{student_data[:name]} \nId: #{student_data[:id]} \nEmail: #{student_data[:email]}"
end
