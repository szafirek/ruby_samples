#!/usr/bin/env ruby -w

def solution(a)
    len = a.length
    result = 0
    left = Array.new(len,0)
    right = Array.new(len,0)
    0.upto(len-1) do |i|
        left[i-a[i] > 0 ? i-a[i] : 0] += 1
        right[i+a[i] < len ? i+a[i] : len-1] += 1
    end
    opened = 0
    0.upto(len-1) do |i|
        result += (left[i] * (left[i]-1) / 2) + (opened * left[i])
        return -1 if result > 1e7
        opened += left[i] - right[i]
    end
    result
end

# solved with help from: 
# http://thisthread.blogspot.com/2013/06/number-of-disc-intersections-linear.html
