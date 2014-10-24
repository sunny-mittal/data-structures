require 'pry'
require 'pry-nav'

class BinaryTree
  attr_reader :value, :left, :right
  attr_accessor :search_results

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
    @@search_results = []
  end

  def pre_order
    @@search_results << value
    left.pre_order if left
    right.pre_order if right
    @@search_results
  end

  def in_order
    left.in_order if left
    @@search_results << value
    right.in_order if right
    @@search_results
  end

  def post_order
    left.post_order if left
    right.post_order if right
    @@search_results << value
  end
end
