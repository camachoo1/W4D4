class MyQueue
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

  def enqueue(item)
    @store.push(item)
  end

  def dequeue(item)
    @store.shift
  end
end