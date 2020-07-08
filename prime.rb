

puts "Enter a number"
x = gets.to_i
y = x.to_i
z = 1

def is_whole_number(variable)
  return variable % 1 == 0
end

loop do

 y -= 1
 z = x.to_f/y.to_f
 ##puts "#{y} #{z}"
if is_whole_number(z)
  puts "false"
  break
end

if y < 3
  puts "true"
  break
end

end
