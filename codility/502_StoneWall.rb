#!/usr/bin/env ruby -w

### Lesson 5: Stacks and Queues
### Exercise 02: StoneWall

def solution(h)
    counter = 1
    stack = [h[0]]
    1.upto(h.length-1) do |i|
        if h[i] != h[i-1]
            stack.pop until stack.empty? || stack.last <= h[i]
            if stack.empty? || (!stack.empty? && stack.last != h[i])
                counter += 1
                stack << h[i]
            end
        end
    end
    counter
end
