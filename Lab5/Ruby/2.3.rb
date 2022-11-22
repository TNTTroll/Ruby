# frozen_string_literal: true

require 'minitest/autorun'
load '2.1.rb'

# Class Test
class Test < Minitest::Test
  def test_first
    arr = [1, 2, 3, 4, 5]
    assert_equal [1, 2, 3], local_ex(arr)
  end

  def test_second
    arr = [5, 2, 3]
    assert_equal [], local_ex(arr)
  end
end
