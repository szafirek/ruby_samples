#!/usr/bin/env ruby -w

### Lesson 5: Stacks and Queues
### Exercise 01: Nesting

def solution(s)
    return 1 if s.empty?
    return 0 if s.size % 2 != 0
    stack = []
    s.each_char do |c|
        if c == '('
            stack << c
        else
            if !stack.empty?
                stack.pop
            else
                return 0
            end
        end
    end
    return stack.empty? ? 1 : 0
end
