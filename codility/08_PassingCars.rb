#!/usr/bin/env ruby -w

def solution(a)
    first = 0
    first += 1 while a[first] == 1
    counter = sum = 0
    (a.length-1).downto(first) do |i|
        if a[i] == 0
            sum += counter
        else
            counter += 1
        end 
        return -1 if sum > 1e9
    end
    sum
end
