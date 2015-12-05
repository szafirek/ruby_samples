#!/usr/bin/env ruby -w
require './insertion_sort'

def bucket_sort(a)
  temp = [] * 10
  10.times { |i| temp[i] = [] }
  a.each do |x|
    index = (x * 10).to_i
    temp[index] << x
  end
  temp.each_with_index do |x, i|
    temp[i] = insertion_sort(x)
  end
  temp.flatten
end