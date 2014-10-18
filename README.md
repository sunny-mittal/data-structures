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

**Quick Sort** is my implementation of the classic sorting algorithm. It takes in a numeric input array and sorts it in ascending order.

## Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'quick_sort.rb'
```

## Usage

To sort an array using my version of insertion sort, simply call `insertion_sort` on your array:

```ruby
[1,4,2,5,6].quick_sort # => [1,2,4,5,6]
[3,2,6,4,13].quick_sort # => [2,3,4,6,13]
```

## How it works
Again I chose to open up the Array class and add the necessary instance method(s). The method takes in two optional parameters representing the left and right pointers, respectively. If the parameters are not provided, the default of `0` and `length - 1` are used. Then, if the left index is less than the right, a pivot index is chosen that is roughly halfway between the two, otherwise the array is done being sorted and is returned. When a pivot index is chosen, the array is partitioned so that all places below the pivot index contain lower values. A new pivot index is returned by the partitioning method representing the point at which all values on the right are greater and all values on the left are smaller. The quicksort method is then called recursively on the left and right halves of the array until the array is sorted.
