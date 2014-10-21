class Node
  attr_reader :value
  attr_accessor :next_node, :prev_node

  def initialize(value)
    @value = value
  end
end
