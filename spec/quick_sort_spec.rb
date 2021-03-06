require 'minitest/autorun'
require 'minitest/spec'
require 'quick_sort'
require 'benchmark'

describe 'Quick sort method' do
  it 'should properly sort the input array' do
    [1, 4, 2, 5, 3].quick_sort.must_equal [1, 2, 3, 4, 5]
    [1, 3, 2, 6].quick_sort.must_equal [1, 2, 3, 6]
    [3, 6, 4, 5].quick_sort.must_equal [3, 4, 5, 6]
    [1, 2, 3, 4, 5].quick_sort.must_equal [1, 2, 3, 4, 5]
    [3, 1, 3, 4, 4].quick_sort.must_equal [1, 3, 3, 4, 4]
    [1, 5, 4, 2, 6, 7].quick_sort.must_equal [1, 2, 4, 5, 6, 7]
    [3, 8, 9, 14, 2].quick_sort.must_equal [2, 3, 8, 9, 14]
  end

  it 'is benchmarked for awesomeness' do
    puts 'Best'
    puts Benchmark.measure { (1..1_000_000).to_a.quick_sort }
    puts 'Worst'
    puts Benchmark.measure { 1_000_000.downto(1).to_a.quick_sort }
    puts 'Random'
    puts Benchmark.measure { (1..1_000_000).to_a.shuffle.quick_sort }
  end
end
