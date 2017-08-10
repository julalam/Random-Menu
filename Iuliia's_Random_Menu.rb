#input
puts "Please enter how many cookyng styles would you like to tell us about"
styles = gets.chomp.to_i

adj = []
style = []
food = []

styles.times do
  puts "Please enter an adjective"
  input = gets.chomp
  adj << input
end

styles.times do
  puts "Please enter a cooking style"
  input = gets.chomp
  style << input
end

styles.times do
  puts "Please enter a food name"
  input = gets.chomp
  food << input
end

puts "Please enter how many items of menu would you like to see (#{styles} items max)"
number = gets.chomp.to_i

#output
if number > styles
  puts "You entered an integer greater than #{styles}. We will show you a menu for #{styles} items."
  number = styles
end

puts "Menu:"

selected_adj = []
selected_style = []
selected_food = []

number.times do |i|

  selected_adj << (adj - selected_adj).sample
  selected_style << (style - selected_style).sample
  selected_food << (food - selected_food).sample

  puts "#{i+1}. #{selected_adj.last} #{selected_style.last} #{ selected_food.last}"
end
