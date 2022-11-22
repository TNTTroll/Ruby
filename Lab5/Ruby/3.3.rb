# frozen_string_literal: true

require 'minitest/autorun'
load '3.1.rb'

# Class Test
class Test < Minitest::Test
  def test_first
    str = ' Привет, мой  друг  '
    res = 'Привет, мой друг'
    assert_equal res, check_for_spaces(str)
  end

  def test_second
    str = ' Небо в  глазах, солнце внутри  '
    res = 'тебе в глазах, солнце внутри'
    assert_equal res, check_for_spaces(str)
  end

  def test_third
    str = 50.times.map { (0...(rand(10))).map { ('а'..'я').to_a[rand(26)] }.join }.join(' ')
    assert(!check_for_spaces(str).nil?)
  end
end
