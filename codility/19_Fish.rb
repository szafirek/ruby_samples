#!/usr/bin/env ruby -w

def solution(a, b)
    counter = 0
    stack = []
    counter += 1 while b[counter] == 0
    counter.upto(b.length-1) do |i|
        if b[i] == 1
            stack << i
        else
            stack.pop until stack.empty? or a[i] < a[stack.last]
            counter += 1 if stack.empty?
        end
    end
    counter + stack.length
end
