require 'set'

puts "Введите строку:"
input = gets.chomp
letters = Set.new

input.each_char do |char|
  if char =~ /[A-Za-z]/
    letters.add(char.downcase)
  end
end

if letters.size == 26
  puts "True"
else
  puts "False"
end