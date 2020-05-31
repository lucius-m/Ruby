#!/usr/bin/env  ruby

# inject/reduce
# "Accumulator"
# Block variable to use for accumulation
# Ruby convention: memo

#Acuumulator Block Variable

print (1..5).map {|n| n}
puts ""
print (1..5).inject {|memo, n| memo + n}

print [1,2,3,4,5].inject {|memo, n| memo + n}
puts
print [1,2,3,4,5].inject {|memo, n| memo * n}
puts
print [1,2,3,4,5].inject {|memo, n| memo ** n}
puts
print [2,3,4,5].inject {|memo, n| memo ** n}
puts
fruits = ['apple', 'bananna', 'pear']
print fruits
longest = fruits.inject do |memo, fruit|
  if fruit.length > memo.length
    fruit
  else
    memo
  end
end
puts
puts longest
