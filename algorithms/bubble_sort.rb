#!/usr/bin/env ruby -w

def bubble_sort(arr)
  1.upto(arr.length - 1) do |i|
    (arr.length - 1).downto(i) do |j|
      if arr[j] < arr[j-1]
        arr[j], arr[j-1] = arr[j-1], arr[j]
      end
    end
  end
  arr
end