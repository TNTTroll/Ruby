# frozen_string_literal: true

def check_for_spaces(str)
  words = str.squeeze(' ').strip.split(' ')
  words.map do |x|
    x.gsub!(/^[Нн]/, 'т')
    x.gsub!(/[Оо]$/, 'е')
  end

  words.join(' ')
end
