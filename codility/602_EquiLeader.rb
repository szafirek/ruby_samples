#!/usr/bin/env ruby -w

### Lesson 6: Leader
### Exercise 02: EquiLeader

def solution(a)
    length = a.length
    size, value = 0, nil
    a.each do |el|
        if size == 0
            value = el
            size += 1
        else
            size = value != el ? size - 1 : size + 1
        end
    end
    counter, candidate = 0, -1
    candidate = value if size > 0
    a.each { |el| counter += 1 if el == candidate }
    return 0 if counter <= length / 2
    result = 0
    leaders = 0
    length.times do |i|
        leaders += 1 if a[i] == candidate
        result += 1 if leaders > (i+1)/2 && counter-leaders > (length-i-1)/2
    end
    result
end