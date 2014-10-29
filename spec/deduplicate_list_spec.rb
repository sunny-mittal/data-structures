require 'minitest/autorun'
require 'minitest/spec'
require 'doubly_linked_list'
require 'benchmark'

describe 'My doubly-linked list' do
  it 'should allow values to be inserted' do
    dll = DoublyLinkedList.new(3)
    dll.size.must_equal 1
    dll.insert(5, 4, 2, 5)
    dll.size.must_equal 5
  end

  it 'should get deduplicated' do
    dll = DoublyLinkedList.new(8)
    dll.insert(4, 2, 4, 9, 4, 8, 8, 0, 3)
    dll.to_s.must_equal '8 <=> 4 <=> 2 <=> 4 <=> 9 <=> 4 <=> ' \
      '8 <=> 8 <=> 0 <=> 3'
    dll.deduplicate.to_s.must_equal '8 <=> 4 <=> 2 <=> 9 <=> 0 <=> 3'
  end

  it 'should be benchmarked for performance' do
    dll = DoublyLinkedList.new(rand 100)
    dll.insert(*(1..999).map { rand 100 })
    puts "\n", 'List with duplications:', "\n", dll, "\n"
    puts Benchmark.measure { dll.deduplicate }
    puts "\n", 'List without duplications:', "\n", dll, "\n"
  end
end
