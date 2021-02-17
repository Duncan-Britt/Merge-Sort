require 'minitest/autorun'
require_relative '../lib/main.rb'

class MergeTest < Minitest::Test
  def test_number_sort_even
    
    expected = [0,1,2,3,4,5,6,7,8,9]
    assert_equal expected, my_merge([9,8,7,6,5,4,3,2,1,0])
  end

  def test_number_sort_odd

    expected = [1,2,3,4,5,6,7,8,9]
    assert_equal expected, my_merge([9,8,7,6,5,4,3,2,1])
  end

  def test_number_sort_random

    expected = [2,3,3,4,4,5,7,7,9]
    assert_equal expected, my_merge([3,3,4,7,7,4,9,2,5])
  end
end
