require 'pry'
require 'pry-nav'

class Array
  def merge_sort
    return self if length < 2
    left, right = each_slice((length / 2.0).round).to_a
    left = left.merge_sort
    right = right.merge_sort
    merge left, right
  end

  private

  def merge(left, right)
    return left unless right
    sorted = []
    until left.empty? || right.empty?
      left[0] < right[0] ? sorted << left.shift : sorted << right.shift
    end
    left.empty? ? sorted.push(*right) : sorted.push(*left)
    sorted
  end
end
