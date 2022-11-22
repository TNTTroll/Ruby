# frozen_string_literal: true

require_relative '1.1'

f_file = File.open('F.txt', 'r+')
g_file = File.open('G.txt', 'w')

rewrite_other(f_file, g_file)

f_file.close
g_file.close
