#!/usr/bin/env ruby -w

### Lesson 7: Maximum slice problem
### Exercise 03: MaxSliceSum

def solution(a)
    max_ending, max_slice = a[0], a[0]
    1.upto(a.length-1) do |i|
        max_ending = [a[i],max_ending+a[i]].max
        max_slice = [max_slice,max_ending].max
    end
    max_slice
end