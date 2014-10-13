class Array
  def insertion_sort
    self.each_with_index do |current_value, index|
      next if index == 0 || current_value >= self[index - 1]
      for i in (index - 1).downto(0) do
        if current_value < self[i]
          if i == 0
            tmp, self[i] = self[i], current_value
            for j in (index).downto(i + 1) do
              self[j] = self[j - 1]
            end
            self[i + 1] = tmp
            break
          else
            next
          end
        else
          tmp, self[i + 1] = self[i + 1], current_value
          for j in (index).downto(i + 2) do
            self[j] = self[j - 1]
          end
          self[i + 2] = tmp
          break
        end
      end
    end
    self
  end
end
