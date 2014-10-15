class Array
  def stupid_sort
    shuffle! until self == sort
    self
  end
end
