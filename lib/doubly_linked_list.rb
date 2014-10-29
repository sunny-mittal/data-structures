require 'pry'
require 'pry-nav'

class DoublyLinkedList
  attr_reader :value
  attr_accessor :next, :prev

  def initialize(value)
    @value = value
    @@values = {}
  end

  def size(count = 1)
    @next.nil? ? count : @next.size(count + 1)
  end

  def insert(*values)
    values.each do |value|
      @next.nil? ? (@next = DoublyLinkedList.new value).prev = self : @next.insert(value)
    end
  end

  def deduplicate
    remove if @@values[value]
    @@values[value] = true
    @next.deduplicate if @next
    self
  end

  def remove
    @prev.next = @next
    @next.prev = @prev if @next
  end

  def to_s
    result = ''
    node = self
    until node.nil?
      result << "#{node.value} <=> "
      node = node.next
    end
    5.times { result.chop! }
    result
  end
end
