require 'minitest/autorun'
require 'minitest/spec'
require 'linked_list'

describe 'Linked list' do
  before { @ll = List.new }

  it 'allows new nodes to be inserted' do
    previous_length = @ll.size
    @ll.insert(Node.new('lizard'))
    @ll.size.must_equal previous_length + 1
  end

  it 'reports the correct length' do
    @ll.insert(Node.new('Giraffe'))
    @ll.size.must_equal 1
  end

  it 'can find a desired node' do
    node = Node.new(4)
    @ll.insert(node)
    @ll.search(4).must_equal node
    @ll.search('not there').must_equal nil
  end

  it 'prints to a csv string' do
    @ll.insert(Node.new('Lizard'))
    @ll.insert(Node.new(:giraffe))
    @ll.insert(Node.new(4))
    @ll.to_s.must_equal "4, :giraffe, 'Lizard'"
  end

  it 'allows nodes to be removed' do
    @ll.insert(Node.new('Lizard'))
    @ll.insert(Node.new(:giraffe))
    existing_node = @ll.search('Lizard')
    previous_length = @ll.size
    @ll.remove(existing_node).must_equal 'Lizard'
    @ll.size.must_equal previous_length - 1
    @ll.search('Lizard').must_equal nil
    @ll.remove(Node.new(42)).must_equal nil
    giraffe_node = @ll.search(:giraffe)
    @ll.remove(giraffe_node).must_equal :giraffe
    @ll.search(:giraffe).must_equal nil
    @ll.remove('something').must_equal nil
  end
end
