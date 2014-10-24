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
end
