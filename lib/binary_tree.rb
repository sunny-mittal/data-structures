require 'pry'
require 'pry-nav'

class BinaryTree
  attr_reader :value, :left, :right
  attr_accessor :search_results

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
    @search_results = []
  end

  def pre_order
    @search_results << value
    @search_results += left.pre_order if left
    @search_results += right.pre_order if right
    @search_results
  end

  def in_order
    @search_results += left.in_order if left
    @search_results << value
    @search_results += right.in_order if right
    @search_results
  end

  def post_order
    @search_results += left.post_order if left
    @search_results += right.post_order if right
    @search_results << value
    @search_results
  end
end
