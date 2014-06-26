# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1.
# 2.
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to be able to add items to a list of grocerries
# As a user, I want to be able to edit that list of grocceries
# As a user, I want to read the list of grocerries
# As a user, I want to delete items from that list of grocerries
# As a user, I want to be able to create instances or different versions of the groccery list
 
# Pseudocode
# <<-Pseudocode

# 1. def initialize
#      @my_list = hash.new
#    end

# 2. def add_item(a_item, quantity, price)
#      @my_list[add_item] = [quantity, price]
#    end
   
# 3. def delete_item(d_item)
#      @my_list.delete(delete_item)     
#    end
   
# 4. def print_list
#      p "You want to buy"
#      @my_list.each {|x, y| p y[0]+"of #{x} at at price of" + y[1]}
#    end
         
# Pseudocode
 
# Your fabulous code goes here....

class GroceryList
    attr_accessor :my_list

    def initialize
      @my_list = Hash.new
    end

    def add_item(a_item, quantity, price)
      @my_list[a_item] = [quantity, price]
    end
       
    def delete_item(d_item)
      @my_list.delete(d_item)     
    end
       
    def print_list
      p "You want to buy"
      @my_list.each {|x, y| p "#{y[0]} of #{x} at at price of #{y[1]}"}
    end   
end     

 my_grocery = GroceryList.new
 my_grocery.add_item("milks", 2, 5)
 my_grocery.add_item("breads", 2, 2)
 my_grocery.add_item("nerds", 10, 2)
 my_grocery.delete_item("breads")
 my_grocery.add_item("nerds", 9, 1.5)
 my_grocery.print_list

# DRIVER CODE GOES HERE. 

def assert actual, expected, message
    display message
    p actual == expected || display_error(actual, expected)
end

def display message
    p "*"*50
    p message
    p "*"*50
end

def display_error actual, expected
    p "[ERROR] -- Expected #{expected}, but got #{actual}"
end

assert my_grocery.my_list, {"milks"=>[2, 5], "nerds"=>[9, 1.5]}, "Tests entire list"
assert my_grocery.my_list["milks"], [2, 5], "Tests milks"
assert my_grocery.my_list["nerds"], [9, 1.5], "Tests nerds"

 