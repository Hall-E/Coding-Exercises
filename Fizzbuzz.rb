x=0
fizz=3
buzz=5
loop do
  x += 1

  if x % fizz == 0 and x % buzz == 0
    puts "fizzbuzz"
  elsif x % fizz == 0
      puts "fizz"
  elsif x % buzz == 0
      puts "buzz"
  else
    puts x
  end

break if x == 200
end
