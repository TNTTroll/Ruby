# frozen_string_literal: true

load '1.1.rb'

print 'Enter X >>> '
x = gets.chomp.to_i

print 'Enter Y >>> '
y = gets.chomp.to_i

p "(#{x}; #{y}): #{calculate(x, y)}"
