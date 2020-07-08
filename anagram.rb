puts "Enter word 1"
word_1 = gets
##puts word_1.downcase.chars.sort.join
word_2 = gets
puts "Enter word 2"
##puts word_2.chars.sort.join

if word_1.downcase.chars.sort.join == word_2.downcase.chars.sort.join
  puts true
else
  puts false
end
