require_relative "MyStack"

class StackQueue
  def initialize
    @push_stack = MyStack.new
    @pop_stack = MyStack.new
  end

  def size
    @push_stack.length + @pop_stack.length
  end

  def empty?
    @push_stack.empty? && @pop_stack.empty?
  end

  def enqueue(item)
    @push_stack << item
  end

  def dequeue
    @pop_stack.pop
  end

  def add_to_pop_stack(item)
    @pop_stack << @push_stack.pop until @push_stack.empty?
  end
end