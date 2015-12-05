#!/usr/bin/env ruby -w

### Lesson 2: Counting Elements
### Exercise 03: MissingInteger

def solution(a)
    ar = Array.new(a.length,false)
    a.each { |i| ar[i-1] = true if 0 < i && i <= a.length }
    (0...a.length).each { |i| return i+1 if !ar[i] }
    return a.length + 1
end