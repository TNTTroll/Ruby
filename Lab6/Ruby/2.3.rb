# frozen_string_literal: true

require 'minitest/autorun'
require_relative '2.1'

# Class Test
class Test < Minitest::Test
  def test_first
    a = 0.001
    res = 0.386625800411963
    assert_in_delta res, calculate(a), 10**-4
  end

  def test_second
    a = 0.0001
    res = 0.386320364398511
    assert_in_delta res, calculate(a), 10**-4
  end
end
