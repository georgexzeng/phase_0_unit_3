# U3.W8-9: Numbers to English Words


# I worked on this challenge George Zeng.

# 2. Pseudocode
# create two hashes - single digit and tens 
# covert integers to strings
# split the strings
# take last value of string == a ones digit subtract from original number set equal to new tens number 
# match tens to tens string and single to the single string
# concat strings

# 3. Initial Solution

def in_words(num)
	single = {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
	ten = {ten=>"ten", 20=>"twenty", 30=>"thirty", 40=>"forty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety"}
    my_single=num.to_s.split('').pop.to_i
    my_ten=num - my_single
    if my_ten>0 then return "#{ten[my_ten]} #{single[my_single]}"
    else return "#{single[my_single]}"
    end
end

# 4. Refactored Solution

def in_words(num)
	single = {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
	ten = {ten=>"ten", 20=>"twenty", 30=>"thirty", 40=>"forty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety"}
    my_single=num.to_s.split('').pop.to_i
    my_ten=num - my_single
    if my_ten>0 then return "#{ten[my_ten]} #{single[my_single]}"
    else return "#{single[my_single]}"
    end
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert expected, actual, message
    display message
    puts actual == expected || display_error(expected, actual)
end

def display message 
    p "*"*50
    p message
    p "*"*50
end

def display_error expected, actual
    puts "error expected #{expected} but got #{actual}"
end

assert "four", in_words(4), "testing to see if 4 converts to four" 
assert "twenty seven", in_words(27), "testing to see if 27 converts to twenty seven" 
assert "ninety two", in_words(92), "testing to see if 92 converts to ninety two" 

# 5. Reflection 
