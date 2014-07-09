# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

<<-Pseudocode

1. if you run num through 5x^2+4 or 5x^2-4 - does it equal a perfect square?
2. i.e. 5x^2+4 ?= ((5x^2+4)^0.5)^2

y^2 === 5x^2+4


Pseudocode

	
# 3. Initial Solution

# def is_fibonacci?(num)

# 	# p (5*(num**2)+4)
# 	# p ((5*(num**2)+4)**0.5).to_i**2

# 	# p (5*(num**2)-4)
# 	# p ((5*(num**2)-4)**0.5).to_i**2


# 	if (5*(num**2)+4) == ((5*(num**2)+4)**0.5).to_i**2 then true
# 	elsif (5*(num**2)-4) == ((5*(num**2)-4)**0.5).to_i**2 then true
# 	else false
# 	end
# end


# is_fibonacci?(0)

# 4. Refactored Solution

def is_fibonacci?(num)
	if (5*(num**2)+4) == ((5*(num**2)+4)**0.5).to_i**2 then true
	elsif (5*(num**2)-4) == ((5*(num**2)-4)**0.5).to_i**2 then true
	else false
	end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

def assert expected, actual, message
	display message
	display actual == expected || display_error(expected, actual)
end

def display message
	p "*"*50
	p message
	p "*"*50
end

def display_error expected, actual
	p "ERROR!  Expected #{expected} but got #{actual}!"
end

assert true, is_fibonacci?(0), "Testing for 0"
assert true, is_fibonacci?(1), "Testing for 1"
assert true, is_fibonacci?(2), "Testing for 2"
assert true, is_fibonacci?(3), "Testing for 3"	
assert false, is_fibonacci?(4), "Testing for 5"


# 5. Reflection 