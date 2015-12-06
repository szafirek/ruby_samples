#!/usr/bin/env ruby -w

def heap_sort(a)
  build_heap(a)
  (a.size - 1).downto(1) do |i|
    a[0], a[i] = a[i], a[0]
    heapify(a, i, 0)
  end
  a
end

def build_heap(a)
  (a.size / 2 - 1).downto(0) do |i|
    heapify(a, a.size, i)
  end
  a
end

def heapify(a, size, i)
  left = 2*i + 1
  right = 2*i + 2
  if left < size && a[left] > a[i]
    max = left
  else
    max = i
  end
  if right < size && a[right] > a[max]
    max = right
  end
  if max != i
    a[i], a[max] = a[max], a[i]
    heapify(a, size, max)
  end
end