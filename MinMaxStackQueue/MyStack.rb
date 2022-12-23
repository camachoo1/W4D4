class MyStack
 def initialize
    @store = [] 
 end

 def peek
   @store.last
 end

 def size
   @store.length
 end

 def empty?
   @store.empty?
 end

 def pop
   @store.pop
 end

 def push(item) 
   @store << item
 end

 def max # [5,4,3]
 end
 
end

