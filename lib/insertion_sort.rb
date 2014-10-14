class Array
  def insertion_sort
    each_with_index do |current_value, index|
      next if index == 0 || current_value >= self[index - 1]
      for i in (index - 1).downto(0) do
        if current_value < self[i]
          if i == 0
            delete_at(index)
            insert(i, current_value)
            break
          else
            next
          end
        else
          delete_at(index)
          insert(i + 1, current_value)
          break
        end
      end
    end
  end
end
