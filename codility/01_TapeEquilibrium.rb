#!/usr/bin/env ruby -w

def solution(a)
    left = a[0]
    right = a.reduce(:+) - left
    min = (left-right).abs
    (1...a.length-1).each do |i|
        left += a[i]
        right -= a[i]
        absolute = (left-right).abs
        min = absolute if min > absolute
    end
    min
end
