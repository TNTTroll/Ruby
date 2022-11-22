# frozen_string_literal: true

def create_arr(lent)
  arr = []

  (0..lent - 1).each do |_i|
    new_elem = gets.chomp.to_i
    arr.push(new_elem)
  end

  arr
end

def local_ex(arr)
  save_arr = []

  (1..arr.length - 2).each do |i|
    save_arr << i if arr[i - 1] < arr[i] && arr[i] < arr[i + 1]
  end

  save_arr
end
