require 'pry'
require 'pry-nav'

class Array
  def radix_sort(pass = 1)
    completed = []
    buckets = Array.new(10) { [] }
    each do |num|
      which_bucket = num.to_s[-pass]
      which_bucket ? buckets[which_bucket.to_i] << num : completed << num
    end
    buckets.flatten!
    completed += buckets.radix_sort(pass += 1) unless buckets.empty?
    completed
  end
end
