require 'pry'
require 'pry-nav'
require 'node'

class Queueue
  attr_reader :size, :head, :tail

  def initialize
    @size = 0
  end

  def enqueue(value)
    node = Node.new(value)
    @head = node if @size == 0
    @tail.prev_node = node if @tail
    @tail = node
    @size += 1
  end

  def dequeue
    value = @head.value
    @head = @head.prev_node
    @size -= 1
    value
  end
end
