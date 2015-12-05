#!/usr/bin/env ruby -w

def insertion_sort(a)
  1.upto(a.length - 1) do |i|
    value = a[i]
    j = i -1
    while j >= 0 && a[j] > value
      a[j+1] = a[j]
      j -= 1
    end
    a[j+1] = value
  end
  a
end