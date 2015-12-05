#!/usr/bin/env ruby -w

### Lesson 6: Leader
### Exercise 01: Dominator

def solution(a)
    length = a.length
    size, value, index = 0, nil, nil
    length.times do |i|
        if size == 0
            size += 1
            value = a[i]
            index = i
        else
            size = value != a[i] ? size - 1 : size + 1
        end
    end
    candidate = -1
    candidate = value if size > 0
    result = -1
    count = 0
    length.times { |i| count += 1 if a[i] == candidate }
    result = index if count > length / 2
    result
end
