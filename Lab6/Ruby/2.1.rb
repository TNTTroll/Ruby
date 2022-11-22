# frozen_string_literal: true

include Math

def rectangle_rule(a_point, b_point, segments)
  dx = 1.0 * (b_point - a_point) / segments
  sum = 0.0
  xstart = a_point + dx / 2

  (0..segments).each { |i| sum += log(xstart + i * dx, E) }

  sum * dx
end

def calculate(eps)
  segments = 1
  a = 1
  b = 2
  ans = (log(a, E) + log(b, E)) / 2

  acc = ans
  list = Enumerator.new do |yielder|
    loop do
      yielder.yield ans
      old_ans = ans
      ans = (ans + rectangle_rule(a, b, segments)) / 2

      segments *= 2
      acc = (ans - old_ans).abs
    end
  end
  list.take_while { acc > eps * ans }

  ans
end
