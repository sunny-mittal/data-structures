require 'minitest/autorun'
require 'minitest/spec'
require 'queueue'

describe 'My queue implementation' do
  before { @queue = Queueue.new }

  it 'should properly enqueue an element' do
    @queue.size.must_equal 0
    @queue.enqueue :giraffe
    @queue.size.must_equal 1
    @queue.head.value.must_equal :giraffe
  end

  it 'should properly dequeue an element' do
    @queue.enqueue :giraffe
    @queue.size.must_equal 1
    @queue.dequeue.must_equal :giraffe
    @queue.size.must_equal 0
  end
end
