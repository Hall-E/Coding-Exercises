
deck = []
hand = []
x = 0

class Card
  def initialize (v,s,n)
    @value, @suite, @name = v, s, n
  end

  def printvalue
    @value
  end
  def printsuite
    @suite
  end
  def printname
    @name
  end
begin
  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.count
    all.count
  end
end
end

##card = Card.new(10, "spades")
##puts card.printsuite
##puts card.printvalue


["Hearts", "Spades", "Clubs", "Diamonds"].each { |suite,name|
loop do
  x += 1
  if x == 1
    name = "Ace"
  elsif x == 10
    name = "Jack"
  elsif x == 11
    name = "Queen"
  elsif x == 12
    name = "King"
  else
    name = x
    end
  deck << card = Card.new(x,suite, name)
  if x == 12
    x = 0
    break
  end
end
}


puts "How many cards would you like to draw?"
draw = gets.chomp.to_i


##deal cards from deck
deck.shuffle.first(draw).each do |card|
hand << card
deck.delete(card)
end

##print hand
puts "\nhand"
hand.each do |card|
  print card.printname
  print " "
  puts card.printsuite
end

=begin
puts "\n"
puts "troubleshooting stats"
print "cards in hand "
puts hand.count
print "cards in deck "
puts deck.count

puts "\ndeck"
deck.each do |card|
  print card.printvalue
  print " "
  puts card.printsuite
end
=end
