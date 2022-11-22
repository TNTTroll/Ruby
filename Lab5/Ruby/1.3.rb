# frozen_string_literal: true

require 'minitest/autorun'
load '1.1.rb'

# Class Test
class Test < Minitest::Test
  def test_first
    par_x = 1
    par_y = 5
    res = 1.9328253435696028
    assert_in_delta res, calculate(par_x, par_y), 10**-4
  end
end
