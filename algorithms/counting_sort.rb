#!/usr/bin/env ruby -w

def counting_sort(a)
  result = []
  temp = [0] * a.max
  a.each { |x| temp[x-1] += 1 }
  temp.each_with_index do |x, index|
    x.times { result << index + 1 }
  end
  result
end