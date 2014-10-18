require 'pry'
require 'pry-nav'

class Array
  def quick_sort(left = 0, right = length - 1)
    if left < right
      pivot_index = left + (right - left) / 2
      new_pivot_index = qs_partition(left, right, pivot_index)
      quick_sort(left, new_pivot_index - 1)
      quick_sort(new_pivot_index + 1, right)
    end

    self
  end

  private

  def qs_partition(left, right, pivot_index)
    pivot_value = at(pivot_index)
    self[pivot_index], self[right] = at(right), at(pivot_index)
    store_index = left

    (left..right - 1).each do |index|
      if at(index) < pivot_value
        self[index], self[store_index] = at(store_index), at(index)
        store_index += 1
      end
    end

    self[store_index], self[right] = at(right), at(store_index)

    store_index
  end
end
