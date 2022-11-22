# frozen_string_literal: true

include Math

def calculate(par_x, par_y)
  (2 * cos(par_x - PI / 6)) / ((1 / 2) + sin(par_y)**2)
end
