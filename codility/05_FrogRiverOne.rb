#!/usr/bin/env ruby -w

def solution(x, a)
    ar = Array.new(x+1,true)
    sum = (1..x).reduce(:+)
    (0..a.length-1).each do |i|
        if a[i] < x+1
            if ar[a[i]]
                ar[a[i]] = false
                sum -= a[i]
            end 
            return i if sum == 0
        end
    end
    -1
end
