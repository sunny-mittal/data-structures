require 'minitest/autorun'
require 'minitest/spec'
require 'radix_sort'
require 'benchmark'

describe 'Radix sort method' do
  it 'should properly sort the input array' do
    [1, 4, 2, 5, 3].radix_sort.must_equal [1, 2, 3, 4, 5]
    [1, 3, 2, 6].radix_sort.must_equal [1, 2, 3, 6]
    [3, 6, 4, 5].radix_sort.must_equal [3, 4, 5, 6]
    [1, 2, 3, 4, 5].radix_sort.must_equal [1, 2, 3, 4, 5]
    [3, 1, 3, 4, 4].radix_sort.must_equal [1, 3, 3, 4, 4]
    [1, 5, 4, 2, 6, 7].radix_sort.must_equal [1, 2, 4, 5, 6, 7]
    [3, 8, 9, 14, 2].radix_sort.must_equal [2, 3, 8, 9, 14]
  end

  it 'is benchmarked for awesomeness' do
    puts 'Best'
    puts Benchmark.measure { (1..10_000_000).to_a.radix_sort }
    puts 'Worst'
    puts Benchmark.measure { 10_000_000.downto(1).to_a.radix_sort }
    puts 'Random'
    puts Benchmark.measure { (1..10_000_000).to_a.shuffle.radix_sort }
  end
end
