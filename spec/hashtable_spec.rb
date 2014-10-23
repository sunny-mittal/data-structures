require 'minitest/autorun'
require 'minitest/spec'
require 'hashtable'
require 'benchmark'

describe 'My hash table' do
  def self.my_table
    @my_table ||= begin
                    h = HashTable.new 1024
                    File.open('/usr/share/dict/words') do |file|
                      file.each_line do |word|
                        word.chomp!
                        h.set(word, word.reverse)
                      end
                    end
                    h
                  end
  end

  before { @hash_table = self.class.my_table }

  it 'should be of fixed size' do
    @hash_table.size.must_equal 1024
    proc { @hash_table.size = 1000 }.must_raise NoMethodError
    @hash_table.size.must_equal 1024
  end

  it 'should only accept strings as keys' do
    proc { @hash_table.set(42, 24) }.must_raise TypeError
  end

  it 'should return the correct value' do
    @hash_table.set 'pear', 'raep'
    @hash_table.set 'zombie', 'eibmoz'
    @hash_table.get('pear').must_equal 'raep'
    @hash_table.get('zombie').must_equal 'eibmoz'
  end

  it 'is benchmarked for performance' do
    puts
    puts 'Benchmarking for 1000 look-ups'
    puts 'Worst case: Afrikaans'
    puts Benchmark.measure { 1000.times { @hash_table.get('Afrikaans') } }
    puts 'Best case: whistling'
    puts Benchmark.measure { 1000.times { @hash_table.get('whistling') } }
  end
end
