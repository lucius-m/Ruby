#!/usr/bin/env ruby
#

x = [1,2,3,4,5]

y = x.map {|n| n + 1}
print x
puts ""
print y
puts ""
y = x.collect {|n| n * 50}
# [50,100,150,200,250]

scores = {low: 2, high: 8, avg: 6}

adjusted_scores = scores.map do |k,v|
  "#{k.capitalize}: #{v * 100}"
end

print adjusted_scores
puts ""


fruits = ['apple', 'bannana', 'pear']
cap_fruits = fruits.map do |fruit|
  fruit.capitalize if fruit == 'pear'
end

puts fruits
puts ""







