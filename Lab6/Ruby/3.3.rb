# frozen_string_literal: true

require 'minitest/autorun'
require_relative '3.1'

# Class Test
class Test < Minitest::Test
  def setup
    @n = 100
  end

  def test_first
    block = ->(x) { x * Math.sin(x) }
    res = 3.4832027476550813
    assert_in_delta res, calculate(@n, &block), 10**-4
  end

  def test_second
    block = proc { |x| x * Math.sin(x) }
    res = 3.4832027476550813
    assert_in_delta res, calculate(@n, &block), 10**-4
  end

  def test_third
    block = ->(x) { Math.tan(x) }
    res = 0.08740159453152402
    assert_in_delta res, calculate(@n, &block), 10**-4
  end

  def test_forth
    block = proc { |x| Math.tan(x) }
    res = 0.08740159453152402
    assert_in_delta res, calculate(@n, &block), 10**-4
  end
end
