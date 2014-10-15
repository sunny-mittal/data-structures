require 'pry'
require 'pry-nav'

class Array
  def quick_sort
    return self if length < 2

    p_index = rand(length)
    c_index = 0

    until c_index == length
      if at(c_index) >= at(p_index) && c_index < p_index
        swap(c_index, p_index)
        p_index = c_index
      elsif at(c_index) <= at(p_index) && c_index > p_index
        swap(c_index, p_index)
        p_index, c_index = c_index, p_index
      end
      c_index += 1
    end
    left, right = slice(0...p_index), slice(p_index + 1..-1)
    left, right = left.quick_sort, right.quick_sort
    left.push(at(p_index)) + right
  end

  private

  def swap(c_index, p_index)
    self[c_index], self[p_index] = at(p_index), at(c_index)
  end
end
