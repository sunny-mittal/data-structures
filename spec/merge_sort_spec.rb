require 'minitest/autorun'
require 'minitest/spec'
require 'merge_sort'
require 'benchmark'

describe 'Merge sort method' do
  it 'should properly sort the input array' do
    [1, 4, 2, 5, 3, 6, 7, 8].merge_sort.must_equal [1, 2, 3, 4, 5, 6, 7, 8]
    [1, 4, 2, 3].merge_sort.must_equal [1, 2, 3, 4]
    [1, 4, 2, 5, 3].merge_sort.must_equal [1, 2, 3, 4, 5]
    [1, 3, 2, 6].merge_sort.must_equal [1, 2, 3, 6]
    [3, 6, 4, 5].merge_sort.must_equal [3, 4, 5, 6]
    [1, 2, 3, 4, 5].merge_sort.must_equal [1, 2, 3, 4, 5]
    [3, 1, 3, 4, 4].merge_sort.must_equal [1, 3, 3, 4, 4]
    [1, 5, 4, 2, 6, 7].merge_sort.must_equal [1, 2, 4, 5, 6, 7]
    [3, 8, 9, 14, 2].merge_sort.must_equal [2, 3, 8, 9, 14]
  end

  it 'should prove its awesomeness' do
    puts 'Best'
    puts Benchmark.measure { (1..100000).to_a.merge_sort }
    puts 'Worst'
    puts Benchmark.measure { 100000.downto(1).to_a.merge_sort }
    puts 'Random'
    puts Benchmark.measure { (1..100000).to_a.shuffle.merge_sort }
  end
end
