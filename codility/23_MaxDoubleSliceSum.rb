#!/usr/bin/emv ruby -w

def solution(a)
    len = a.length
    
    max_endings = Array.new(len,0)
    temp = 0
    1.upto(len-1) do |i|
        temp = [0,a[i]+temp].max
        max_endings[i] = temp
    end
    
    max_beginings = Array.new(len,0)
    temp = 0
    (len-2).downto(0) do |i|
        temp = [0,a[i]+temp].max
        max_beginings[i] = temp
    end
    
    result = 0
    0.upto(len-3) { |i| result = [result,max_endings[i]+max_beginings[i+2]].max }
    result
end