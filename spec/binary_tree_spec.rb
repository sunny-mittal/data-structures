require 'minitest/autorun'
require 'minitest/spec'
require 'binary_tree'
require 'benchmark'

describe 'My binary tree' do
  before do
    peter = BinaryTree.new('Peter')
    andrea = BinaryTree.new('Andrea')
    dan = BinaryTree.new('Dan')
    craig = BinaryTree.new('Craig')
    eddie = BinaryTree.new('Eddie')
    katie = BinaryTree.new('Katie', peter, andrea)
    jony = BinaryTree.new('Jony', dan, katie)
    phil = BinaryTree.new('Phil', craig, eddie)
    @root = BinaryTree.new('Tim', jony, phil)
  end

  it 'should implement pre-order depth-first traversal' do
    @root.pre_order.must_equal %w( Tim Jony Dan Katie Peter Andrea ) +
      %w( Phil Craig Eddie )
  end

  it 'should implement in-order depth-first traversal' do
    @root.in_order.must_equal %w( Dan Jony Peter Katie Andrea Tim ) +
      %w( Craig Phil Eddie )
  end

  it 'should implement post-order depth-first traversal' do
    @root.post_order.must_equal %w( Dan Peter Andrea Katie Jony Craig ) +
      %w( Eddie Phil Tim )
  end

  it 'should reset the array on subsequent searches' do
    @root.pre_order(true).must_equal %w( Tim Jony Dan Katie Peter Andrea ) +
      %w( Phil Craig Eddie )
    @root.in_order(true).must_equal %w( Dan Jony Peter Katie Andrea Tim ) +
      %w( Craig Phil Eddie )
    @root.post_order(true).must_equal %w( Dan Peter Andrea Katie Jony Craig ) +
      %w( Eddie Phil Tim )
  end

  it 'should be benchmarked for performance' do
    puts
    puts 'Pre-order'
    puts Benchmark.measure { 1000.times { @root.pre_order(true) } }
    puts 'In-order'
    puts Benchmark.measure { 1000.times { @root.in_order(true) } }
    puts 'Post-order'
    puts Benchmark.measure { 1000.times { @root.post_order(true) } }
  end
end
