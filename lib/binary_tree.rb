require 'pry'
require 'pry-nav'

class BinaryTree
  attr_reader :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
    @@search_results = []
  end

  def pre_order(reset = true)
    @@search_results = [] if reset
    @@search_results << value
    left.pre_order(false) if left
    right.pre_order(false) if right
    @@search_results
  end

  def in_order(reset = true)
    @@search_results = [] if reset
    left.in_order(false) if left
    @@search_results << value
    right.in_order(false) if right
    @@search_results
  end

  def post_order(reset = true)
    @@search_results = [] if reset
    left.post_order(false) if left
    right.post_order(false) if right
    @@search_results << value
  end
end
