
deck = []
hand = []
x = 0

class Card
  def initialize (n,s)
    @number, @suite = n, s
  end

  def printnumber
    @number
  end
  def printsuite
    @suite
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
##puts card.printnumber


["Hearts", "Spades", "Clubs", "Diamonds"].each { |suite|
loop do
  x += 1
  deck << card = Card.new(x,suite)
  if x == 10
    x = 0
    break
  end
end
}

=begin
deck.shuffle.each do |card|
print card.printnumber
print " "
puts card.printsuite
end
=end

puts deck.shuffle.first(5)
deck.shuffle.first(5).each do |card|
hand << card
end


puts "hand"
puts hand

puts hand.count
puts deck.count
