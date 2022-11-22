# frozen_string_literal: true

require 'minitest/autorun'
require_relative '1.1'

# Class Test
class Test < Minitest::Test
  def setup
    @f_file = File.open('F.txt', 'r')
    @g_file = File.open('G.txt', 'w')
  end

  def test_first
    assert_equal(false, @f_file.closed?)
    assert_equal(false, @g_file.closed?)
  end

  def test_second
    @f_file.close
    @g_file.close

    assert_equal(true, @f_file.closed?)
    assert_equal(true, @g_file.closed?)
  end
end
