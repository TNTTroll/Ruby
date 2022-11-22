# frozen_string_literal: true

include Math

def calculate(n_count, &block)
  step = 1.0 * (2 - -2) / n_count
  summ = 0
  x = -2

  (0...n_count).each do
    summ += block.call x
    x += step
  end

  1.0 * (2 - -2) / n_count * summ
end
