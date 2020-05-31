#!/usr/bin/env  ruby
#

 
puts (1..10).find {|n| n == 5}

puts (1..10).find {|n| n % 3 == 0}

puts (1..10).detect {|n| n % 3 == 0}

fruits = ['apple', 'bannana', 'pear']
puts fruits
puts fruits.find {|fruit| fruit.length > 5}

pantry = {
  'apple' => 0,
  'banana' => 1,
  'pear' => 3
}
puts pantry
puts pantry.find {|k,v| v ==0}

puts (1..10).find_all {|n| n % 3 == 0}


puts (1..10).select {|n| n % 3 == 0}


puts (1..10).any? {|n| n <= 5}

puts (1..10).none? {|n| n <= 5}

puts (1..10).all? {|n| n <= 5}

puts (1..10).one? {|n| n <= 5}
puts (1..10).one? {|n| n == 5}

numbers = [*1..10]

numbers.delete_if {|n| n <= 5}

numbers = [*1..10]

even = numbers.delete_if {|n| n % 2 ==1}
puts even
