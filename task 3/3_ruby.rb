puts "Введите количество чисел:"
repets = gets.to_i
last_element = -1
repit = 0

repets.times do
  element = gets.to_i
  if element == last_element
    repit += 1
  end
  last_element = element
end

puts "Количество повторов: #{repit}"
