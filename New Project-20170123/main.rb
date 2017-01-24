# 1
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

# 2
def prime_fib(k)
    fibs = {}
    count = 0
    k.times do
    if count <= 1
    fibs["f#{count}".to_sym] = 1
    end
    if count >= 2
        fibs["f#{count}".to_sym] = fibs["f#{count-2}".to_sym] + fibs["f#{count-1}".to_sym]
    end
    count += 1
    end
    return fibs
end
fibs = prime_fib(10)
count = 1
fibs.each do |x, y|
    if count == 1
        print "{"
    end
    print ":#{x} -> #{y}, "
    count += 1
    end
    
# 3

def build_tuple_array(n)
    num_array = []
    a = 0
    n.times do
        b = 0
        n.times do
            num_array << [a,b]
            b += 1
        end
        a += 1
    end
    return "#{num_array}"
end
print "Please input a number: "
n = gets.chomp.to_i
puts build_tuple_array(n)

# 4
US_states = ["Alaska", "Alabama", "Arkansas", "American Samoa", "Arizona", "California", "Colorado", "Connecticut", "District of Columbia", "Delaware", "Florida", "Georgia", "Guam", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Virgin Islands", "Vermont", "Washington", "Wisconsin", "West Virginia", "Wyoming"]
long_states = []
US_states.each do |x|
    if x.length >= 8
        long_states << x
    end
end

# 5
long_states = []
US_states.each do |x|
    if (x[0] == "M" || x[0] == "N" || x[0] == "S") && (x[x.length-1] == "a" || x[x.length-1] == "e" || x[x.length-1] == "i" || x[x.length-1] == "o" || x[x.length-1] == "u")
        long_states << x
    end
end

# 6
long_states = US_states
long_states.each do |x|
    x.reverse!
end
long_states.sort!
    long_states.each do |x|
    x.reverse!
    end
    
# 7
abbr_states = [ ["AK", "Alaska"], 
                ["AL", "Alabama"], 
                ["AR", "Arkansas"], 
                ["AS", "American Samoa"], 
                ["AZ", "Arizona"], 
                ["CA", "California"], 
                ["CO", "Colorado"], 
                ["CT", "Connecticut"], 
                ["DC", "District of Columbia"], 
                ["DE", "Delaware"], 
                ["FL", "Florida"], 
                ["GA", "Georgia"], 
                ["GU", "Guam"], 
                ["HI", "Hawaii"], 
                ["IA", "Iowa"], 
                ["ID", "Idaho"], 
                ["IL", "Illinois"], 
                ["IN", "Indiana"], 
                ["KS", "Kansas"], 
                ["KY", "Kentucky"], 
                ["LA", "Louisiana"], 
                ["MA", "Massachusetts"], 
                ["MD", "Maryland"], 
                ["ME", "Maine"], 
                ["MI", "Michigan"], 
                ["MN", "Minnesota"], 
                ["MO", "Missouri"], 
                ["MS", "Mississippi"], 
                ["MT", "Montana"], 
                ["NC", "North Carolina"], 
                ["ND", "North Dakota"], 
                ["NE", "Nebraska"], 
                ["NH", "New Hampshire"], 
                ["NJ", "New Jersey"], 
                ["NM", "New Mexico"], 
                ["NV", "Nevada"], 
                ["NY", "New York"], 
                ["OH", "Ohio"], 
                ["OK", "Oklahoma"], 
                ["OR", "Oregon"], 
                ["PA", "Pennsylvania"], 
                ["PR", "Puerto Rico"], 
                ["RI", "Rhode Island"], 
                ["SC", "South Carolina"], 
                ["SD", "South Dakota"], 
                ["TN", "Tennessee"], 
                ["TX", "Texas"], 
                ["UT", "Utah"], 
                ["VA", "Virginia"], 
                ["VI", "Virgin Islands"], 
                ["VT", "Vermont"], 
                ["WA", "Washington"], 
                ["WI", "Wisconsin"], 
                ["WV", "West Virginia"], 
                ["WY", "Wyoming"] ]
hash_states = {}
abbr_states.each do |x,y|
    hash_states[x] = y
end

# 8
new_states = {}
abbr_states.each do |x,y|
    first_last = (y[0] + y[y.length-1]).upcase
    if x == first_last
    new_states[x] = y
    end
end