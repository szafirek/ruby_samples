#!/usr/bin/env ruby -w

def solution(a, b, k)
    result = (b * 1.0 / k).floor
    result += 1 if a == 0
    return result if a <= k
    remove = a % k == 0 ? a / k - 1 : a / k
    result - remove
end
