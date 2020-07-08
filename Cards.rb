
deck = []

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

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.count
    all.count
  end
end

##card = Card.new(10, "spades")
##puts card.printsuite
##puts card.printnumber


["Hearts", "Spades", "Clubs", "Diamonds"].each { |suite|
loop do
  x += 1
  deck << card = Card.new(x,suite)
    print card.printnumber
  puts card.printsuite
  if x == 10
    x = 0
    break
  end
end

}

puts deck
