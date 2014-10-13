require 'minitest/autorun'
require 'minitest/spec'
require 'insertion_sort'

describe 'Insertion sort method' do
  it 'should properly sort the input array' do
    [1,4,2,5,3].insertion_sort.must_equal [1,2,3,4,5]
    [1,3,2,6].insertion_sort.must_equal [1,2,3,6]
    [3,6,4,5].insertion_sort.must_equal [3,4,5,6]
    [1,2,3,4,5].insertion_sort.must_equal [1,2,3,4,5]
    [3,1,3,4,4].insertion_sort.must_equal [1,3,3,4,4]
    [1,5,4,2,6,7].insertion_sort.must_equal [1,2,4,5,6,7]
    [3,8,9,14,2].insertion_sort.must_equal [2,3,8,9,14]
  end

end
