# -----------------------
# |     Ruby Blanks     |
# -----------------------
# Fill-in-the-blank game, popularly known as Mad Libs
# Think of a sentence (or two) with several blanks
# "I decited to _____ a _____ party from my ______  _________"
# blanks = ['verb', 'adjective', 'adjective', 'noun']
#
# Ask user to provide each type of word
#
# "Give me a ________: "
# answers = ['thorw', 'huge', 'crazy', 'nephew']
#
# Output your sentence with the answers added
#
puts """
 -----------------------
 |     Ruby Blanks     |
 -----------------------
"""

blanks = ['verb', 'adjective', 'adjective', 'noun']

vowels = ['a', 'e', 'i', 'o', 'u',]


answers = blanks.map do |request|
  article  = vowels.include?(request[0]) ? 'an' : 'a'
  print "Give me #{article} #{request}: "
  response = gets.chomp
end

puts "I decided to #{answers[0]} a #{answers[1]} party for my #{answers[2]} #{answers[3]}."







