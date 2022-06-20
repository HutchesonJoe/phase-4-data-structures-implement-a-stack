# your code here
require 'pry'
class Stack

  attr_accessor :limit

  def initialize(limit=0)
    @stack = []
    @limit = limit
  end

  def push(value) 
    if @limit == 0 || @stack.length < @limit
      @stack.push(value)
    else
      raise Exception.new("Stack Overflow")
    end
  end

  def pop
    @stack.pop
  end

  def peek
  index = @stack.length - 1
   @stack[index]
  end

  def size
    @stack.length
  end

  def empty?
    @stack.empty?
  end

  def full?
    @stack.length == @limit
  end

  def search(value)
    if @stack.include?(value)
      @stack.length - @stack.index(value) - 1
    else 
      -1 
    end
  end
end