#!/usr/bin/env ruby -w

def solution(x, y, d)
    ((y - x * 1.0) / d).ceil
end