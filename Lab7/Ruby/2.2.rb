# frozen_string_literal: true

require_relative '2.1'

print "Choose 'Plank' or 'Crate' >>> "
obj = gets.chomp

case obj.downcase
when 'plank'
  print 'Enter length and width >>> '
  len, wid = gets.split(' ')
  plank = Plank.new(len.to_i, wid.to_i)

  puts "\nSquare: #{plank.square}"

  puts "Length: #{plank.print_info('Length')}"
  puts "Width: #{plank.print_info('Width')}"

else
  print 'Enter length, width and depth >>> '
  len, wid, dep = gets.split(' ')
  crate = Crate.new(len.to_i, wid.to_i, dep.to_i)

  puts "\nSquare: #{crate.square}"
  puts "Volume: #{crate.volume}"

  crate.print_info
end
