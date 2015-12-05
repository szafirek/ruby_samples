#!/usr/bin/env ruby -w

### Lesson 4: Sorting
### Exercise 03: Triangle

def solution(a)
    a.sort!
    0.upto(a.length-3) { |i| return 1 if a[i] + a[i+1] > a[i+2] &&
                                         a[i+1] - a[i] < a[i+2] }
    return 0
end
