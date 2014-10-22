class Node
  attr_reader :key, :value
  attr_accessor :next_node, :prev_node

  def initialize(key = nil, value)
    @value = value
    @key = key
  end
end
