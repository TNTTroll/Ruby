# frozen_string_literal: true

load '2.1.rb'

print 'Enter array length >>> '
lent = gets.chomp.to_i

arr = create_arr(lent)

p arr
p local_ex(arr)
