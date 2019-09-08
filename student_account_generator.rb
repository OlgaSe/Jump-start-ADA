names = Array.new()
ids = Array.new()
emails = Array.new()
count = 1

puts "Please enter #{count} student names (first and last)."
count.times do |n|
    puts "Enter name №#{n+1}:"
    name = gets.chomp.upcase
    names << name
end
puts name

names.length.times do 
    id = rand(111111..999999).to_s
    ids << id
end

names.length.times do |i|
    name_initial = names[i].slice(0)
    last_name = names[i].split.last
    id_digits = ids[i].slice(2, 3)
    email = name_initial + last_name + id_digits + "@adadevelopersacademy.org"
    emails << email 
end

count.times do |i|
    puts "#{names[i]} #{ids[i]} #{emails[i]}"
end
