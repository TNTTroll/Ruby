# frozen_string_literal: true

require_relative '3.1'

puts "Choose function: \n1. x * sin(x) \n2. tan(x) \n"
func_num = gets.chop

puts "Choose creation method: \n1. Lambda \n2. Yield \n"
method_num = gets.chop

case func_num
when '1'
  case method_num
  when '1' then block = ->(x) { x * Math.sin(x) }
  when '2' then block = proc { |x| x * Math.sin(x) }
  end

when '2'
  case method_num
  when '1' then block = ->(x) { Math.tan(x) }
  when '2' then block = proc { |x| Math.tan(x) }
  end
end

print 'Enter steps >>> '
n = gets.chop.to_i

print calculate(n, &block).to_s
