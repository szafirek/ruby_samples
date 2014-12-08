#!/usr/bin/env ruby -w

def solution(s)
    return 1 if s.empty?
    return 0 if s.size % 2 != 0
    pairs = {"{" => "}", "[" => "]", "(" => ")"}
    to_stack = ["{","[","("]
    stack = []
    s.each_char do |c|
        if to_stack.include?(c)
            stack << c
        else
            if pairs[stack.last] == c
                stack.pop
            else
                return 0
            end
        end
    end
    return stack.empty? ? 1 : 0
end
