# frozen_string_literal: true

def rewrite_other(f_file, g_file)
  f_file.readlines.reverse_each do |line|
    line.split.reverse_each do |word|
      g_file.print "#{word.reverse} "
    end
    g_file.puts "\n"
  end
end
