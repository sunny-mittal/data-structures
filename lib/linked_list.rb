require 'pry'
require 'pry-nav'
require_relative './node'

class List
  attr_reader :size, :head

  def initialize
    @size = 0
  end

  def insert(node)
    node.next_node = @head unless @head.nil?
    @head = node
    @size += 1
  end

  def search(value)
    return if (node = @head).nil?
    until node.nil?
      return node if node.value == value
      node = node.next_node
    end
    node
  end

  def to_s
    return '' if (node = @head).nil?
    result = []
    until node.nil?
      result << case node.value
                when Numeric then node.value
                when Symbol then ":#{node.value}"
                else "'#{node.value}'"
                end
      node = node.next_node
    end
    result.join(', ')
  end

  def remove(node)
    return if (current_node = @head).nil? || node.nil?
    return current_node.value if first_node current_node, node
    until current_node.nil?
      previous_node = current_node
      return if (current_node = current_node.next_node).nil?
      if current_node.value == node.value
        previous_node.next_node, @size = current_node.next_node, @size - 1
        return current_node.value
      end
    end
  end

  def first_node(current_node, node)
    if current_node.value == node.value
      @head = current_node.next_node
      @size -= 1
      return true
    end
    false
  end
end
