#!/usr/bin/env ruby -w

def merge_sort(a)
  return a if a.size <= 1
  left = merge_sort(a[0, a.size / 2])
  right = merge_sort(a[a.size / 2, a.size])
  merge(left, right)
end

def merge(left, right)
  result = []
  while left.size > 0 && right.size > 0
    result << if left[0] <= right[0]
      left.shift
    else
      right.shift
    end
  end
  result.concat(left).concat(right)
end