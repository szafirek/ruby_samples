#!/usr/bin/env ruby -w

### Lesson 4: Sorting
### Exercise 02: Distinct

def solution(a)
    return 0 if a.length == 0
    counter = 1
    a.sort!
    1.upto(a.length-1) do |i|
        counter += 1 if a[i-1] != a[i]
    end
    counter
end
