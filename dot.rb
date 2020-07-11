array_1 = [1,2,3]
array_2 = [4,5,6]
array_1.sort_by(&:to_i)
array_2.sort_by(&:to_i)
puts array_1.zip(array_2).map{|x, y| x*y}.sum
