require 'pry'
require 'pry-nav'
require_relative './hash_linked_list'

class HashTable
  attr_reader :size

  def initialize(size)
    @array = Array.new(size)
    @size = size
  end

  def get(key)
    location = hash(key)
    list = @array[location]
    list.search(key)
  end

  def set(key, val)
    fail TypeError unless key.is_a? String
    node = Node.new(key, val)
    location = hash(key)
    list = @array[location] ||= HashList.new
    list.insert(node)
  end

  private

  def hash(key)
    sum = key.each_char.each_with_index.reduce(0) do |acc, ci_array|
      acc + ci_array[0].ord * 10**ci_array[1]
    end
    sum % @size
  end
end
