require 'pry'
require 'pry-nav'

class Array
  def radix_sort(pass = 1)
    completed = []
    to_sort = []
    buckets = Hash.new { |hash, key| hash[key] = [] }
    each do |num|
      which_bucket = num.to_s[-pass]
      which_bucket ? buckets[which_bucket] << num : completed << num
    end
    ('0'..'9').each do |i|
      to_sort += buckets[i]
    end
    completed += to_sort.radix_sort(pass += 1) unless to_sort.empty?
    completed
  end
end
