#!/usr/bin/env ruby -w

### Lesson 2: Counting Elements
### Exercise 04: MaxCounters

def solution(n, a)
    result = Array.new(n,0)
    max_counter = 0
    max = 0
    a.each do |i|
        j = i - 1
        if i > n
            max_counter = max
        else
            result[j] = max_counter if result[j] < max_counter
            result[j] += 1
            max = result[j] if result[j] > max
        end
    end
    (0...n).each { |i| result[i] = max_counter if result[i] < max_counter }
    result
end
