#!/usr/bin/env ruby -w

def solution(a)
    min, max, result = a[0], a[0], 0
    a.each do |e|
        if min > e
            min = e
            max = 0
        else
            max = [max,e].max
        end
        result = [result,max-min].max
    end
    result
end
