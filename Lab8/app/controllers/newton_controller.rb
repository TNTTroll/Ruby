class NewtonController < ApplicationController
  def input
  end

  def find_sqrt(a)
    x = (a + 1.0) / 2.0
    loop do
      break if (x*x - a) / a < 0.001
      x = (x + a/x) / 2.0
    end
    x
  end

  def view
    a = params[:number].to_i

    @get_number = a
    @answer = find_sqrt(a)

  end
end
