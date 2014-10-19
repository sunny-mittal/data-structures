require 'pry'
require 'pry-nav'

class Array
  def radix_sort
    negatives = select { |x| x < 0 }
    positives = select { |x| x >= 0 }
    negatives.rs_helper.reverse + positives.rs_helper
  end

  def rs_helper(pass = 1)
    completed = []
    buckets = Array.new(10) { [] }
    each do |num|
      which_bucket = num.to_s[-pass] == '-' ? nil : num.to_s[-pass]
      which_bucket ? buckets[which_bucket.to_i] << num : completed << num
    end
    buckets.flatten!
    completed += buckets.rs_helper(pass += 1) unless buckets.empty?
    completed
  end
end
