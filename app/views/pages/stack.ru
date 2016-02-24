#SUDO CODE FOR STACK


# class Stack

# 	def initialize
# 		#use an array as a store with a defined number of spaces
# 		#define @top as a instance variable
# 	end

# 	def push
# 		#increment top
# 		#adds an item to the store if there are still psaces available 
		
# 	end


# 	def pop
# 		#decrement top
# 		#return @top
		
# 	end

# 	def top
# 		#return @top
# 	end

# 	private

# 	def empty?
# 		#return true if empty

# 	end

#end



Skip to content
This repository  
Search
Pull requests
Issues
Gist
 @jasminejeane
 Watch 10
  Unstar 5
 Fork 27 sf-wdi-26/modules PRIVATE
 Code  Issues 0  Pull requests 1  Wiki  Pulse  Graphs
Branch: master Find file Copy pathmodules/w06/d02/stack.rb
7201666  11 hours ago
@iliastsangaris iliastsangaris stack comments
1 contributor
RawBlameHistory     62 lines (54 sloc)  1.09 KB
#a stack is very similar to an array
class Stack
  def initialize(size)
    #allocate a certain amount of space to the stack
    @size = size
    #create a new array of a certain size
    @store = Array.new(@size)
    #nothing is in the stack
    @top = -1
  end
  
  #return & remove the top item from stack
  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      #decrement top
      @top = @top.pred
      popped
    end
  end
  
  #add an item to stack
  def push(element)
    #if the stack is full or the element is nil don't add it to the stack
    if full? or element.nil?
      nil
    else
      #increment top by one
      @top = @top.succ
      #store the element in the new top's position
      @store[@top] = element
      #return the instance of the stack
      self
    end
  end

  #get for size of stack
  def size
    @size
  end
  
  #examine item at top of stack
  def top
    @store[@top]
  end
  
  private

  #determine if stack is full
  def full?
    @top == (@size - 1)
  end
  
  #determine if stack is empty
  def empty?
    @top == -1
  end


end
Status API Training Shop Blog About Pricing
© 2016 GitHub, Inc. Terms Privacy Security Contact Help