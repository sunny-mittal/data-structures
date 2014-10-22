require 'pry'
require 'pry-nav'
require_relative './node'
require_relative './linked_list'

class HashList < List
  def search(key)
    return 'Key not found' if (node = @head).nil?
    until node.nil?
      return node.value if node.key == key
      node = node.next_node
    end
    'Key not found'
  end
end
