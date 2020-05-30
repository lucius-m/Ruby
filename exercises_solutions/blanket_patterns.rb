pattern = gets.chomp

arry = pattern.split(//)
counter = 0

for i in arry
  first = arry.shift
  arry << first
  puts arry.join
end
