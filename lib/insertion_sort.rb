class Array
  def insertion_sort
    (1..self.length - 1).each do |i|
      current_value = self[i]
      j = i - 1
      while j > -1 && self[j] > current_value
        self[j], self[j + 1] = current_value, self[j]
        j -= 1
      end
    end
    self
  end
end
