#!/usr/bin/env ruby -w

def solution(a)
    min = (a[0] + a[1]) / 2.0
    index = 0
    0.upto(a.length-3) do |i|
        two = (a[i] + a[i+1]) / 2.0
        three = (a[i] + a[i+1] + a[i+2]) / 3.0
        if two < min
            min = two
            index = i
        end
        if three < min
            min = three
            index = i
        end
    end
    index = a.length - 2  if (a[-1] + a[-2]) / 2.0 < min
    index
end

