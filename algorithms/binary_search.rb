#!/usr/bin/env ruby -w

def binary_search(tab, x, left=0, right=tab.size-1)
  return -1 if left > right
  mid = (left + right) / 2
  return mid if tab[mid] == x
  if tab[mid] > x
    right = mid - 1
  else
    left = mid + 1
  end
  binary_search(tab, x, left, right)
end