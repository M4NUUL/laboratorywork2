puts "Введите строку:"
original_string = gets.chomp
count_of_char = 1
new_string = ''
actual_char = original_string[0]

(1...original_string.length).each do |i|
  if original_string[i - 1] == original_string[i]
    count_of_char += 1
  else
    new_string += original_string[i - 1]
    new_string += count_of_char.to_s
    count_of_char = 1
    actual_char = original_string[i]
  end
end

new_string += actual_char
new_string += count_of_char.to_s

if new_string.length < original_string.length
  puts new_string
else
  puts original_string
end
