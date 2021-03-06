#!/usr/bin/env ruby -w

### Lesson 2: Counting Elements
### Exercise 02: PermCheck

def solution(a)
    size = a.length
    ar = Array.new(size+1,false)
    a.each do |elem|
        return 0 if elem > size
        if ar[elem]
            return 0
        else
            ar[elem] = true
        end
    end
    1
end
