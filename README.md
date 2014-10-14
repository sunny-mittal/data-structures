# Insertion Sort

By [Sunny Mittal](http://www.sunnymittal.com).

## Description

**Insertion Sort** is my implementation of the classic sorting algorithm. It takes in a numeric input array and sorts it in ascending order.

## Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'insertion_sort.rb'
```

## Usage

To sort an array using my version of insertion sort, simply call `insertion_sort` on your array:

```ruby
[1,4,2,5,6].insertion_sort # => [1,2,4,5,6]
[3,2,6,4,13].insertion_sort # => [2,3,4,6,13]
```

## How it works
I chose to open up the Array class and add the necessary instance method. I then iterate through each element of the array with its index and compare each value with the previous value(s) in the array. Once the case is such that a previous value is less than the value being tested, the value being tested is inserted after that lesser value.

# Merge Sort

## Description

** Merge Sort** is my implementation of the classic sorting algorithm in Ruby.

## Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'merge_sort.rb'
```

## Usage

To sort an array using my version of merge sort, simply call `merge_sort` on your array:

```ruby
[1,4,2,5,6].merge_sort # => [1,2,4,5,6]
[3,2,6,4,13].merge_sort # => [2,3,4,6,13]
```

## How it works
I chose to open up the Array class for this as well and add the necessary instance method. I recursively break down the array into left and right pieces until every element is in an array by itself. I then merge the pieces together, unwinding the recursion, and returning a sorted array. Boom!
