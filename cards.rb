
deck = []
hand = []
handvalue = 0
x = 0
y = 0


class Card

  def initialize (number,value,suit,name)
    @number,@value, @suit, @name = number,value, suit, name
  end

  ##accessors
    def printnumber
      @number
    end
    def printvalue
      @value
    end
    def printsuit
      @suit
    end
    def printname
      @name
    end
=begin  early troubleshooting, to parse number of card objects

  def self.all
    ObjectSpace.each_object(self).to_a
  end
  def self.count
    all.count
  end
=end

end

##create all cards for each suit
["Hearts", "Spades", "Clubs", "Diamonds"].each do |suit,name|
loop do
  x += 1
  y = [x, 10].min
##define facecards
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

#create card and move to deck
  deck << card = Card.new(x,y,suit, name)
## cycle to next suit
  if x == 12
    x = 0
    break
  end
end

end

puts "How many cards would you like to draw?"
draw = gets.chomp.to_i


##deal cards from deck
deck.shuffle.first(draw).each do |card|
hand << card
deck.delete(card)
end

##print hand
puts "\nHand\n"
puts ""
hand.each do |card|
##  print card.printvalue
  print card.printname
  print " of "
  puts card.printsuit
  ##add card value to total hand value
  handvalue += card.printvalue
end
print "\nTotal hand value "
puts handvalue

##troubleshooting
=begin
puts "\n"
puts "troubleshooting stats"
print "cards in hand "
puts hand.count
print "cards in deck "
puts deck.count

puts "\ndeck"
deck.each do |card|
  print card.printnumber
  print " "
  puts card.printsuit
end
=end
