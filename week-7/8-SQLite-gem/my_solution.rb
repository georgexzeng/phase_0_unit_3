# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_reps =  $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  longest_reps.each {|x, y| puts "#{x} - #{y}"}
end

def print_lowest_grade_level_speakers(lowest_year)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{lowest_year} grade)"
  puts $db.execute("SELECT name FROM congress_members WHERE grade_current<#{lowest_year} ORDER BY grade_current ASC")
end

# New Jersey, New York, Maine, Florida, Alaska
# NJ, NY, ME, FL, AK

# def print_state_senators(states_list)
# 	puts "Senators from the following states:"
# 	puts $db.execute("SELECT name FROM congress_members WHERE location IN (#{states_list}")
# end

def print_senator_state(*state)
 states = *state
 puts "SENATORS AND THE STATE THEY REPRESENT"
 states.each {|state| 
 	my_info = $db.execute("SELECT name, location FROM congress_members WHERE location='#{state}'")
 	my_info.each {|name, state| puts "#{name} - #{state}"}}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:

print_senator_state("NJ", "NY", "ME", "FL", "AK")

# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.