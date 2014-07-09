# U3.W8-9: Reverse Words


# I worked on this challenge with Sebastian Radloff.

# 2. Pseudocode
# We need a method named reverse_words
# Needs to be able to reverse multiple words, a sentence, and put it in an array
# reverse_words takes one string argument
# First delimit the whole string argument by spaces, storing each word into an index of an array
# Then implement Method A on each word in the argument string storing it in a new string to be returned
# def reverse_word(input_string)
#     string_array = input_string.split(" ")
#     return_string = ""
#     string_array.each do |word|
#         word_array = word.split(//)
        
#         for i in 0...(word_array.length/2)
#                 temp = word_array[i]
#                 word_array[i] = word_array[((word_array.length-1)-i)]
#                 word_array[((word_array.length-1)-i)] = temp
#         end
        
#         return_string << word_array.join("") + " "
    
#     end
    
#     return_string.slice!((return_string.length)-1)
#     return return_string

# end
# Method A
# 1. you have a string and you're able to denote what's the last value in the string and the first value
# 2. you look at how many reversals you have to do by taking the length and dividing it by 2.  for example if you have 10 characters, then you do 5 reversals
# 3. then you simply take the last letter and insert

# 3. Initial Solution
# def reverse_word(input_string)
#     string_array = input_string.split(" ")
#     return_string = ""
#     string_array.each do |word|
#         word_array = word.split("")
#         p word_array
#         for i in 0..(word_array.length/2)
#                 temp = word_array[i]
#                 word_array[i] = word_array[((word_array.length)-i)]
#                 word_array[((word_array.length)-i)] = temp
#                 p word_array[i]
#                 p word_array[((word_array.length)-i)]
#         end
#         p word_array
#     end
    
# end


# 4. Refactored Solution

def reverse_words(input_string)
    string_array = input_string.split(" ")
    return_string = ""
    string_array.each do |word|
        word_array = word.split(//)

        for i in 0...(word_array.length/2)
                temp = word_array[i]
                word_array[i] = word_array[((word_array.length-1)-i)]
                word_array[((word_array.length-1)-i)] = temp
        end
        
        return_string << word_array.join("") + " "
    
    end
    
    return_string.slice!((return_string.length)-1)
    return return_string

end

p reverse_words("Hello Thomas")


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert actual, expected, message
  display message
  puts actual == expected || display_error(actual, expected)
end

def display message
  p "*" * 50
  puts message
  p "*" * 50
end

def display_error expected, actual
 p "ERROR! Expected #{expected} but got #{actual}"
end

assert reverse_words(""), "", "Test to see if blank string is reversed"

def random_word(length = 5)
  rand(36**length).to_s(36)
end

word = random_word
assert reverse_words(word), word.reverse, "Test to see if random word is reversed"

word1 = random_word
word2 = random_word
assert reverse_words("#{word1} #{word2}"), "#{word1.reverse} #{word2.reverse}", "Test to see if two random words are reversed"

assert reverse_words("Ich bin ein Berliner"), "hcI nib nie renilreB", "Test to see if sentence is reversed"

# 5. Reflection 
