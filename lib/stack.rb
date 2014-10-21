require 'pry'
require 'pry-nav'
require 'node'

class Stack
  attr_reader :head, :size

  def initialize
    @size = 0
  end

  def push(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head, @size = new_node, @size + 1
  end

  def pop
    fail 'StackEmptyError' if @size == 0
    value, @head = @head.value, @head.next_node
    @size -= 1
    value
  end
end
