#!/usr/bin/env ruby -w

def selection_sort(a)
  0.upto(a.length - 1) do |i|
    min = i
    (i+1).upto(a.length - 1) do |j|
      min = j if a[j] < a[min]
    end
    a[i], a[min] = a[min], a[i]
  end
  a
end