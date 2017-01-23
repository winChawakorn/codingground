print "Please enter a positive number :"
n = gets.chomp.to_i
math_array = []
a = 1
n.times do
    x = a**3
    math_array << x
    a += 1
end
math_array.each do|x|
    puts x
end