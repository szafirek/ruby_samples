#!/usr/bin/env ruby -w

def quick_sort(a)
  return a if a.length <= 1
  pivot = a.pop
  left, right = a.partition { |x| x < pivot }
  quick_sort(left) + [pivot] + quick_sort(right)
end