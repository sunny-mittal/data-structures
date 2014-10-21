require 'minitest/autorun'
require 'minitest/spec'
require 'stack'

describe 'My stack implementation' do
  before { @stack = Stack.new }

  it 'should allow elements to be added to the head' do
    @stack.push 'some string'
    @stack.head.value.must_equal 'some string'
  end

  it 'should allow elements to be removed from the head' do
    @stack.push :giraffe
    @stack.push 42
    @stack.pop.must_equal 42
    @stack.pop.must_equal :giraffe
  end

  it 'should raise an error when trying to pop an empty stack' do
    err = -> { @stack.pop }.must_raise RuntimeError
    err.message.must_equal 'StackEmptyError'
  end
end
