# frozen_string_literal: true

# Class Plank
class Plank
  def initialize(len, wid)
    @len = len
    @wid = wid
  end

  def square
    @len * @wid
  end

  def print_info(way)
    way == 'Length' ? @len : @wid
  end
end

# Class Crate
class Crate < Plank
  def initialize(len, wid, dep)
    @dep = dep
    super(len, wid)
  end

  def volume
    @len * @wid * @dep
  end

  def print_info
    puts("Length: #{@len} \nWidth: #{@wid} \nDepth: #{@dep}")
  end
end
