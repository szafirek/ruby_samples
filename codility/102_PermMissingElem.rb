#!/usr/bin/env ruby -w

### Lesson 1: Time Complexity
### Exercise 02: PermMissingElem

def solution(a)
    return 1 if a.empty?
    sum = (1..a.length+1).reduce(:+)
    a_sum = a.reduce(:+)
    sum - a_sum
end