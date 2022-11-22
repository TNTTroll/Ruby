# frozen_string_literal: true

require 'minitest/autorun'
require_relative '2.1'

# Class Test
class Test < Minitest::Test
  def setup
    @plank = Plank.new(10, 5)
    @crate = Crate.new(15, 2, 3)
  end

  def test_first
    assert_equal(true, @plank.is_a?(Plank))
    assert_equal(true, @crate.is_a?(Crate))
  end

  def test_second
    assert_equal(false, @plank.is_a?(Crate))
    assert_equal(true, @crate.is_a?(Plank))
  end

  def test_third
    assert_equal(false, @crate.instance_of?(Plank))
  end

  def test_fourth
    res = [Crate, Plank, Object, Minitest::Expectations, Kernel, BasicObject]
    assert_equal(res, @crate.class.ancestors)
  end
end
