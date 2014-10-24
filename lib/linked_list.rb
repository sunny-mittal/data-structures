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

  def to_s(result = [])
    return '' if (node = @head).nil?
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

  def remove(node, current_node = @head)
    if first_node_matches?(current_node, node)
      return node.value
    elsif next_node_matches?(node, current_node)
      return node.value
    else
      remove(node, current_node.next_node)
    end
  rescue NoMethodError => e
    nil if e.to_s.match(/value/)
  end

  def first_node_matches?(current_node, node)
    if current_node.value == node.value
      @head = current_node.next_node
      @size -= 1
      return true
    end
    false
  end

  def next_node_matches?(node, current_node)
    if current_node.next_node.value == node.value
      current_node.next_node = current_node.next_node.next_node
      @size -= 1
      return true
    end
    false
  end
end
