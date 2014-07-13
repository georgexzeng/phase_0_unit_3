# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge with Sebastian Radloff.

# 2. Pseudocode

# Define four methods: 1. area, 2. perimeter, 3. diagonal, 4. square?

# For first method area:
# 1. multiply width by height and return value

# For second method perimeter:
# 1. take 2*width + 2*height and return value

# For third method diagonal
# 1. sqrt(width**2+heigh**2) and return value

# For last method square?
# 1. return width==height


# 3. Initial Solution

# class Rectangle
#   attr_accessor :width, :height

#   def initialize(width, height)
#     @width  = width
#     @height = height
#   end
  
#   def area
#     return self.width*self.height
#   end
  
#   def perimeter
#     return 2*self.width+2*self.height
#   end
  
#   def diagonal
#     return Math.sqrt(self.width**2+self.height**2)
#   end
  
#   def square?
#     return self.width==self.height
#   end  
    
#   def ==(other)
#     (other.width  == self.width && other.height == self.height ) ||
#     (other.height == self.width && other.width  == self.height )  
#   end
# end


# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end
  
  def area
     width*height
  end
  
  def perimeter
     2*width+2*height
  end
  
  def diagonal
     Math.sqrt(width**2+height**2)
  end
  
  def square?
     width==height
  end  
    
  def ==(other)
    (other.width  == width && other.height == height ) ||
    (other.height == width && other.width  == height )  
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

def assert(expected, actual, message)
    if (expected != actual)
        puts "Error: " + message
        puts "*"*50
    else
        puts message + " true"
        puts "*"*50
    end
end

rectangle = Rectangle.new(10,20)
square = Rectangle.new(20,20)

assert(200, rectangle.area, "Rectangle area test")
assert(400, square.area, "Square area test")

assert(60, rectangle.perimeter, "Rectangle perimeter test")
assert(80, square.perimeter, "Square perimeter test")

assert(Math.sqrt((10**2)+(20**2)), rectangle.diagonal, "Rectangle diagonal test")
assert(Math.sqrt((20**2)+(20**2)), square.diagonal, "Square diagonal test")

assert(false, rectangle.square?, "Rectangle square? test")
assert(true, square.square?, "Square square? test")


# 5. Reflection 