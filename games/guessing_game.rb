puts "---------------------"
puts "| Ruby Guessing Game |"
puts "---------------------"

puts "What is your name?"
name = gets.chomp

puts "Hello, #{name}"
puts "We are going to play a guessing game."
puts "I will choose a random number between 1 and 10"
puts "and you will have three chances to guess it."
puts "Okay, I have my number."

counter = 1
number = rand(10) + 1

loop {
  print "Guess #{counter}:"
  guess = gets.chomp
  if guess.to_i == number
    puts "Great gussing, #{name}!"
    puts "My number was #{number}"
    break
  else
    puts "Sorry, thats wasn't it."
    counter +=1
  end

  if counter == 4
    puts "That was your last guess"
    puts "My number was #{number}"
    puts ""

    break
  end
}
puts "\n\nGoodbye"
