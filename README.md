# Fibonacci Calculator

By [Sunny Mittal](https://github.com/sunny-mittal).

## Description
**Fibonacci Calculator** is a simple and efficient class for finding the nth Fibonacci number.

## Installation

Require in your *.rb file (or use directly in IRB):

```ruby
require 'fibonacci.rb'
```

## Usage

To use the calculator, simply pass in the desired term to the class-level `nth` method:

```ruby
Fibonacci.nth(3) # => 2
Fibonacci.nth(10) # => 55
```

## How it works
The Fibonacci.nth function works very simply. It was created as a class method because it makes no sense to instantiate a "Fibonacci" when all we're looking for is the nth term in the sequence. The method begins by first assigning n_minus_second and n_minus_first (using parallel assignment) the value 1 because the sequence begins with "1, 1." The variable names were chosen because the Fibonacci sequence is a recursive sequence in which the next number is the sume of the previous two. Next, a loop is executed "n" times to progressively change n_minus_second and n_minus_first: n_minus_second becomes n_minus_first and n_minus_first becomes the sum of n_minus_second and the *current* value of n_minus_first. By the time the loop terminates, n_minus_second has become the value succeeding the desired value so to obtain the correct value, the difference of the final n_minus_first and n_minus_second values is returned.