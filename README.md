# Data Structures and Algorithms

By [Sunny Mittal](http://www.sunnymittal.com).

This is my repository for maintaining the data structures and algorithms I construct for my course at Code Fellows, Seattle.

## Insertion Sort

### Description

**Insertion Sort** is my implementation of the classic sorting algorithm. It takes in a numeric input array and sorts it in ascending order.

### Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'insertion_sort'
```

### Usage

To sort an array using my version of insertion sort, simply call `insertion_sort` on your array:

```ruby
[1,4,2,5,6].insertion_sort # => [1,2,4,5,6]
[3,2,6,4,13].insertion_sort # => [2,3,4,6,13]
```

### How it works
I chose to open up the Array class and add the necessary instance method. I then iterate through each element of the array with its index and compare each value with the previous value(s) in the array. Once the case is such that a previous value is less than the value being tested, the value being tested is inserted after that lesser value.

## Merge Sort

### Description

** Merge Sort** is my implementation of the classic sorting algorithm in Ruby.

### Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'merge_sort'
```

### Usage

To sort an array using my version of merge sort, simply call `merge_sort` on your array:

```ruby
[1,4,2,5,6].merge_sort # => [1,2,4,5,6]
[3,2,6,4,13].merge_sort # => [2,3,4,6,13]
```

### How it works
I chose to open up the Array class for this as well and add the necessary instance method. I recursively break down the array into left and right pieces until every element is in an array by itself. I then merge the pieces together, unwinding the recursion, and returning a sorted array. Boom!

## Quick Sort

**Quick Sort** is my implementation of the classic sorting algorithm. It takes in a numeric input array and sorts it in ascending order.

### Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'quick_sort'
```

### Usage

To sort an array using my version of insertion sort, simply call `insertion_sort` on your array:

```ruby
[1,4,2,5,6].quick_sort # => [1,2,4,5,6]
[3,2,6,4,13].quick_sort # => [2,3,4,6,13]
```

### How it works
Again I chose to open up the Array class and add the necessary instance method(s). The method takes in two optional parameters representing the left and right pointers, respectively. If the parameters are not provided, the default of `0` and `length - 1` are used. Then, if the left index is less than the right, a pivot index is chosen that is roughly halfway between the two, otherwise the array is done being sorted and is returned. When a pivot index is chosen, the array is partitioned so that all places below the pivot index contain lower values. A new pivot index is returned by the partitioning method representing the point at which all values on the right are greater and all values on the left are smaller. The quicksort method is then called recursively on the left and right halves of the array until the array is sorted.

## Radix Sort

**Radix Sort** is my implementation of the classic sorting algorithm. It takes in a numeric input array and sorts it in ascending order.

### Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'radix_sort'
```

### Usage

To sort an array using my version of insertion sort, simply call `insertion_sort` on your array:

```ruby
[1,4,2,5,6].radix_sort # => [1,2,4,5,6]
[3,2,6,4,13].radix_sort # => [2,3,4,6,13]
```

### How it works

For the last of my sorting algorithms, I again chose to open up the Array class. When the method is called, a ten-element multidimensional array is instantiated to act as my buckets. I then iterate over each element of the receiving array (`self`), converting it to a string and looking at the value in the position corresponding to which pass I'm on (ones, tens, hundreds, etc.). If the value is `nil`, it means the element can be shoved into the `completed` array, because it need not participate in subsequent recursions; if the value is not `nil`, it is placed into the appropriate bucket. Once all elements have been added to `completed` or placed in their buckets, the `buckets` array is flattened and, provided it isn't empty, `radix_sort` is called on it with a new value indicating which position we're sorting on. The recursion ends when there are no more elements in buckets and everything is in the `completed` array. When the recursion tree unwinds, the `completed` arrays from each level are added together in order, resulting in a sorted array.

## Linked List

**Linked List** is my implementation of a singly-linked list in Ruby.

### Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'linked_list'
```

### Usage

To construct an empty list, simply call the list's constructor method. Then to populate the list, insert some nodes by calling the `insert` method with the node as an argument. To search for a node by value, call `search` on the list with the desired value. To remove a node, call `remove` on the list with the node as a value (you may need to use search to first find the node). `remove` will adjust the list if there is an element to be removed and return its value. Finally, to see all the elements of the list in order, call `to_s` on the list.

```ruby
my_list = List.new
list.insert(Node.new(42))
list.insert(Node.new(:giraffe))
list.insert(Node.new('Galoot'))
giraffe_node = list.search(:giraffe) # => #<Node:0x00000001791840 @value=:giraffe, @next_node=#<Node:0x000000017ad1d0 @value=42>>
list.remove(giraffe_node) # => :giraffe
list.to_s # => "'Galoot', 42"
```

### How it works

The Linked List file includes two classes, one for a node and one for the list itself. A node must be given a value and, by default, has no "next node." When a list is created using the constructor, its size is set to 0 and its head is set to `nil`. Upon insertion of a node, `head` is set to the new node, which updates its `next_node` value to the previous node, if there was any. `search` is pretty straightforward: it begins searching from the head for the given value and returns the node, if found, or `nil`, if no corresponding value was found. `remove` is a bit more complicated as it needs to maintain knowledge of the previous node as well as the current node. When called, it first checks to see if the list is empty or if `remove` was called on a `nil` value, in which case it returns `nil`. If this check passes, it then checks to see if the head node is the desired node. If so it returns the node's value and points the head at the next node, decrementing `size` by 1. If this second check also passes, it proceeds to look through the remaining elements of the list until it finds the desired node or tops out, returning `nil`.

## Stack

**Stack** is my implementation of a first-in/last-out (FILO) stack in Ruby.

### Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'stack'
```

### Usage

To construct an empty stack, use `Stack.new`. To push elements onto the stack, call the `push` instance method with a parameter of what you want to add. To remove the top element from the stack, call the `pop` instance method.

```ruby
stack = Stack.new
stack.push :giraffe #=> [#<Node:0x000000032bd038 @value=:giraffe, @next_node=nil>, 1]
stack.pop #=> :giraffe
```

### How it works

The stack is a very simple class similar to the linked list (above) but with fewer methods. Like the list, `Node` instances are used to store the stack's information. When initialized, the stack's `size` attribute is set to 0. When pushing a new value, a `Node` object is created and its `next_node` value is set to the current `head` (`nil` if there is none). Then the `head` is set to point at the new node. When popping a value, an error is raised if the stack is already empty; otherwise, the value at the current head is stored, the head is set to point at the next node in the stack, and the stored value is retured.

## Queueue

**Queueue** is my implementation of a first-in/first-out (FIFO) data structure in Ruby.

### Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'queueue'
```

### Usage

To construct an empty queue, use `Queueue.new` (note the intentional misspelling to avoid conflicts with `Thread::Queue`). To add elements to the queue, call `enqueue(<your value>)` on your Queueue instance. To remove the first element of the queue, call `dequeue` on your Queueue instance.

```ruby
queue = Queueue.new
queue.size #=> 0
queue.enqueue(:goat) #=> 1
queue.enqueue('queueing cues') #=> 2
queue.dequeue #=> :goat
queue.dequeue #=> 'queueing cues'
```

### How it works

The Queueue is very similar to the Stack except is a first-in/first-out structure. When instantiating a new Queueue, `size` is set to 0. After queueing an element, a Node object is created with the appropriate value and the `head` and `tail` attributes of the Queueue are set to point to this new node. With additional queueing, the `head` remains unchanged and the current `tail`'s `prev_node` attribute is set to point to the newly-added node, which also becomes the new `tail`. Dequeueing an element simply stores the value of the current `head` node, points the `head` to the previous node, and returns the stored value.

## Hash Table

**Hash Table** is my implementation of a hash table built using a single array and linked lists as array elements.

### Installation

Require in your *.rb file or use directly in IRB (make sure other dependencies are available):

```ruby
require 'hashtable'
```

### Usage

To construct an empty HashTable, use `HashTable.new(<number of buckets>)`. To add keys and values (keys must be strings), simply call `set(<key>, <value>)` on your HashTable instance. To find the value of a specific key, call `get(<key>)` on your HashTable instance. The following is an example using `/usr/share/dict/words` to add entries to the table where the key is a string and the value is the reverse of the string.

```ruby
my_table = begin
                h = HashTable.new 1024
                File.open('/usr/share/dict/words') do |file|
                  file.each_line do |word|
                    word.chomp!
                    h.set(word, word.reverse)
                  end
                end
                h
              end
my_table.get 'gherkin' #=> "nikrehg"
str = 'definitely not already in there'
my_table.set str, str.reverse #=> 106 (may differ on your system)
my_table.get 'definitely not already in there' #=> "ereht ni ydaerla ton yletinifed"
```

### How it works

The linked list used for creating the `HashTable` class (`HashList`) inherits from my previous implementation of `List` and overrides the `search` method so that it searches for a node by key and returns the value (or 'Key not found'). The `Node` class was also modified to now include a `key` attribute. When adding a new key-value pair to the hash table, a new `Node` is created using the key and value, the `hash` method is called on the key, which calculates the key's position in the base array by summing up the key's character's ordinal values multiplied by 10 to the power of that character's position in the string (that's a mouthful!) and mods that by the length of the hash table, a new `HashList` is created for the position (if necessary), and the node is added to the list. Getting the value of a specific key, by calling `get(<key>)` on the table, then just relies on the HashList's search method.

## Binary Tree

**Binary Tree** is my implementation of a binary tree in Ruby that implements the three depth-first search methods: pre-order, in-order, and post-order.

### Installation

Require in your *.rb file (or use directly in IRB)

```ruby
require 'binary_tree'
```

### Usage

To construct a binary tree, use `BinaryTree.new(<value>, [<left>, <right>])` (`left` and `right` are optional parameters which default to `nil`, but should themselves be BinaryTree objects if set). To obtain a print out of a pre-order search, call `pre_order` on the BinaryTree root node; for an in-order search, call `in_order` on the BinaryTree root node; and for a post-order search, call `post_order` on the BinaryTree root node. In the following example, Tim overlooks Jony and Phil; Jony overlooks Dan and Katie; Phil overlooks Craig and Eddie; and Katie overlooks Peter and Andrea.

```ruby
peter = BinaryTree.new('Peter')
andrea = BinaryTree.new('Andrea')
dan = BinaryTree.new('Dan')
craig = BinaryTree.new('Craig')
eddie = BinaryTree.new('Eddie')
katie = BinaryTree.new('Katie', peter, andrea)
jony = BinaryTree.new('Jony', dan, katie)
phil = BinaryTree.new('Phil', craig, eddie)
root = BinaryTree.new('Tim', jony, phil)

root.pre_order(true) #=> ["Tim", "Jony", "Dan", "Katie", "Peter", "Andrea", "Phil", "Craig", "Eddie"]
root.in_order(true) #=> ["Dan", "Jony", "Peter", "Katie", "Andrea", "Tim", "Craig", "Phil", "Eddie"]
root.post_order(true) #=> ["Dan", "Peter", "Andrea", "Katie", "Jony", "Craig", "Eddie", "Phil", "Tim"]
```

### How it works

The binary tree is simple data structure that stores a node value and pointers to the left and/or right subtrees, if specified. The search methods are simple variations of each other: `pre_order` starts at a root node, traverses left, and then traverses right; `in_order` traverses left, visits the root, then traverses right; and `post_order` traverses left, traverses right, and then visits the root. The `true` parameter is necessary to ensure that the search results don't get concatenated to previous search results.
