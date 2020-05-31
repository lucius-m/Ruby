# Comparison Operator
# Sort methods use the comparison operator
#  ' <=> '
# "Spaceship operator"
#
# value1 <=> value2
#
# RETURNS :
#
# -1    if value1 is Less then value2   Moves "left"
#  0    if value1 is Equal to value2    Stays
#  1    if value1 is More than value2   Moves "rigth"
#
#  Examples:
#
#  1 <=> 2
#  returns -1
#
#  2 <=> 1
#  returns 1
#
#  2 <=> 2
#  returns 0
#


arry = [5, 8, 2, 6, 1, 3]
puts "Sorting #{arry} in ascending order"
x = arry.sort {|v1, v2| v1 <=> v2}
print x
puts 
puts "Sorting #{arry} in descending order"

x = arry.sort {|v1, v2| v2 <=> v1}
print x
puts

# Sort Methods: sort, sort_by

fruits = ['banana', 'apple', 'pear']
puts fruits
x = fruits.sort
# ['apple', 'banana', 'pear']
puts "Sorting using sort method on fruits arry"
x = fruits.sort do |fruit1, fruit2|
  fruit1.length <=> fruit2.length
end
# ['pear', 'apple', 'banana']
print "Sorting using sort (do end) method on fruits arry \n"
print x
puts

x = fruits.sort_by {|fruit| fruit.length}
print "Sorting using sort by #{x}"

# Sort Methods: Sorting Hashes

hash = {a: 4, c: 5, b:3}

hash.sort {|p1, p2| p1[0] <=> p2[0]}
# [[:a, 4], [:b, 3], [:c, 5]]

hash.sort {|p1, p2| p1[1] <=> p2[1]}
# [[:b, 3], [:a, 4], [:c, 5]]
#


